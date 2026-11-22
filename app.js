const starterDishes = [
  {title:"Spaghetti Bolognese",category:"Italienisch",prep_minutes:10,cook_minutes:20},
  {title:"Hähnchen-Gemüse-Pfanne",category:"Pfanne",prep_minutes:10,cook_minutes:10},
  {title:"Kartoffelgratin mit Salat",category:"Vegetarisch",prep_minutes:15,cook_minutes:30},
  {title:"Wraps mit Hähnchen",category:"Schnell",prep_minutes:10,cook_minutes:10},
  {title:"Nudel-Schinken-Auflauf",category:"Ofengericht",prep_minutes:10,cook_minutes:25},
  {title:"Curry mit Reis",category:"Vegetarisch",prep_minutes:10,cook_minutes:15},
  {title:"Frikadellen mit Kartoffeln",category:"Klassiker",prep_minutes:15,cook_minutes:20},
  {title:"Ofengemüse mit Feta",category:"Vegetarisch",prep_minutes:10,cook_minutes:20},
  {title:"Tomatensuppe mit Brot",category:"Schnell",prep_minutes:5,cook_minutes:15},
  {title:"Lachs mit Ofenkartoffeln",category:"Fisch",prep_minutes:10,cook_minutes:20},
  {title:"Penne in Tomatensoße",category:"Italienisch",prep_minutes:5,cook_minutes:15},
  {title:"Bauernomelett",category:"Schnell",prep_minutes:5,cook_minutes:10}
];

const showButton=document.querySelector("#show-dishes");
const dishSection=document.querySelector("#dishes-section");
const dishGrid=document.querySelector("#dish-grid");
const cfg=window.FAMILY_APP_CONFIG;
const statusEl=document.querySelector("#sync-status");
const messageEl=document.querySelector("#auth-message");
const authForm=document.querySelector("#auth-form");
const signedIn=document.querySelector("#signed-in");
let supabaseClient=null;
let currentFamilyId=null;

function showMessage(message){if(messageEl)messageEl.textContent=message;}
function escapeHtml(value){
  return String(value??"").replace(/[&<>"']/g,char=>({"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#39;"}[char]));
}
function renderDishes(dishes){
  if(!dishGrid||!dishSection)return;
  dishGrid.innerHTML=dishes.map(dish=>{
    const total=(Number(dish.prep_minutes)||0)+(Number(dish.cook_minutes)||0);
    const detail=[dish.category||"Gericht",total?("ca. "+total+" Min."):""].filter(Boolean).join(" · ");
    return '<article class="dish-card"><strong>'+escapeHtml(dish.title)+'</strong><span>'+escapeHtml(detail)+'</span></article>';
  }).join("");
  document.querySelector("#dish-count").textContent=dishes.length+" gespeicherte Gerichte";
  dishSection.hidden=false;
}
function showStarterDishes(){
  renderDishes(starterDishes);
  dishSection.scrollIntoView({behavior:"smooth",block:"start"});
}
if(showButton)showButton.addEventListener("click",async()=>{
  if(supabaseClient&&currentFamilyId){
    showMessage("Lade eure gespeicherten Gerichte …");
    const {data,error}=await supabaseClient.from("dishes").select("id,title,category,prep_minutes,cook_minutes").eq("family_id",currentFamilyId).order("title");
    if(error){showMessage("Gerichte konnten nicht geladen werden: "+error.message);return;}
    renderDishes(data||[]);
    showMessage((data||[]).length+" Gerichte aus eurer Familiensammlung geladen.");
    dishSection.scrollIntoView({behavior:"smooth",block:"start"});
  }else{
    showStarterDishes();
    showMessage("Das sind Beispielgerichte. Melde dich an, damit sie dauerhaft in eurer Familiensammlung gespeichert werden können.");
  }
});

function setSession(session){
  const user=session?.user;
  if(user){
    authForm.hidden=true;signedIn.hidden=false;
    document.querySelector("#user-label").textContent="Angemeldet als "+user.email;
    statusEl.innerHTML="<i></i> Konto verbunden";
  }else{
    authForm.hidden=false;signedIn.hidden=true;
    statusEl.innerHTML="<i></i> Nicht angemeldet";
    currentFamilyId=null;
  }
}
async function loadOrCreateFamily(user){
  showMessage("Verbinde eure Familiensammlung …");
  let {data:members,error}=await supabaseClient.from("family_members").select("family_id").eq("user_id",user.id).limit(1);
  if(error){showMessage("Familienkonto konnte nicht geladen werden: "+error.message);return;}
  if(!members?.length){
    const {error:createError}=await supabaseClient.from("families").insert({name:"Meine Familie",created_by:user.id});
    if(createError){showMessage("Familienkonto konnte nicht angelegt werden: "+createError.message);return;}
    const result=await supabaseClient.from("family_members").select("family_id").eq("user_id",user.id).limit(1);
    members=result.data;error=result.error;
    if(error||!members?.length){showMessage("Familienkonto wurde angelegt, die Mitgliedschaft konnte aber nicht geladen werden.");return;}
    const familyId=members[0].family_id;
    const {error:seedError}=await supabaseClient.from("dishes").insert(starterDishes.map(dish=>({...dish,family_id:familyId,servings:3,created_by:user.id})));
    if(seedError){showMessage("Familienkonto steht. Die Beispieldaten konnten noch nicht gespeichert werden: "+seedError.message);return;}
  }
  currentFamilyId=members[0].family_id;
  const {data:dishes,error:dishError}=await supabaseClient.from("dishes").select("id,title,category,prep_minutes,cook_minutes").eq("family_id",currentFamilyId).order("title");
  if(dishError){showMessage("Familiensammlung konnte nicht geladen werden: "+dishError.message);return;}
  renderDishes(dishes||[]);
  showMessage("Familiensammlung verbunden. "+(dishes||[]).length+" Gerichte dauerhaft gespeichert.");
}
if(window.supabase&&cfg?.supabaseUrl&&cfg?.supabaseKey){
  supabaseClient=window.supabase.createClient(cfg.supabaseUrl,cfg.supabaseKey);
  supabaseClient.auth.getSession().then(async({data,error})=>{
    if(error)showMessage(error.message);
    setSession(data?.session);
    if(data?.session?.user)await loadOrCreateFamily(data.session.user);
  });
  supabaseClient.auth.onAuthStateChange(async(event,session)=>{
    setSession(session);
    if(session?.user&&event!=="INITIAL_SESSION")await loadOrCreateFamily(session.user);
  });
  document.querySelector("#signup-button").addEventListener("click",async e=>{
    e.preventDefault();
    const email=document.querySelector("#auth-email").value.trim();
    const password=document.querySelector("#auth-password").value;
    if(!email||password.length<6){showMessage("Bitte E-Mail und ein Passwort mit mindestens 6 Zeichen eingeben.");return;}
    const {data,error}=await supabaseClient.auth.signUp({email,password,options:{emailRedirectTo:window.location.origin+window.location.pathname}});
    showMessage(error?error.message:(data.session?"Konto erstellt und angemeldet.":"Konto erstellt. Bitte bestätige deine E-Mail-Adresse über den zugesandten Link."));
  });
  document.querySelector("#login-button").addEventListener("click",async()=>{
    const email=document.querySelector("#auth-email").value.trim();
    const password=document.querySelector("#auth-password").value;
    const {error}=await supabaseClient.auth.signInWithPassword({email,password});
    showMessage(error?error.message:"Anmeldung erfolgreich.");
  });
  document.querySelector("#logout-button").addEventListener("click",async()=>{
    const {error}=await supabaseClient.auth.signOut();
    showMessage(error?error.message:"Du wurdest abgemeldet.");
  });
}else{
  statusEl.textContent="Verbindung nicht verfügbar";
  showMessage("Die Supabase-Bibliothek konnte nicht geladen werden. Bitte Seite neu laden.");
}
if("serviceWorker"in navigator&&location.protocol.startsWith("http")){
  window.addEventListener("load",()=>navigator.serviceWorker.register("./sw.js").catch(error=>console.warn("Offline-Funktion konnte nicht aktiviert werden:",error)));
}
