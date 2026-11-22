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
const $=selector=>document.querySelector(selector);
const showButton=$("#show-dishes"),dishSection=$("#dishes-section"),dishGrid=$("#dish-grid");
const cfg=window.FAMILY_APP_CONFIG,statusEl=$("#sync-status"),messageEl=$("#auth-message");
const authForm=$("#auth-form"),signedIn=$("#signed-in"),dishForm=$("#dish-form");
let supabaseClient=null,currentFamilyId=null,currentUser=null,editingDishId=null;
let visibleDishes=[];
function showMessage(message){if(messageEl)messageEl.textContent=message;}
function escapeHtml(value){return String(value??"").replace(/[&<>"']/g,char=>({"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#39;"}[char]));}
function setDishFormMessage(message){$("#dish-form-message").textContent=message;}
function renderDishes(dishes){
  visibleDishes=dishes||[];
  dishGrid.innerHTML=visibleDishes.map(dish=>{
    const total=(Number(dish.prep_minutes)||0)+(Number(dish.cook_minutes)||0);
    const detail=[dish.category||"Gericht",total?("ca. "+total+" Min."):""].filter(Boolean).join(" · ");
    const ingredients=Array.isArray(dish.ingredients)?dish.ingredients.join("\n"):"";
    const extra=(ingredients||dish.instructions)?'<details class="dish-details"><summary>Zutaten und Zubereitung</summary>'+(ingredients?'<p><strong>Zutaten:</strong>\n'+escapeHtml(ingredients)+'</p>':'')+(dish.instructions?'<p><strong>Zubereitung:</strong>\n'+escapeHtml(dish.instructions)+'</p>':'')+'</details>':'';
    const actions=currentFamilyId?'<div class="dish-actions"><button type="button" data-action="edit" data-id="'+dish.id+'">Bearbeiten</button><button type="button" class="delete" data-action="delete" data-id="'+dish.id+'">Löschen</button></div>':'';
    return '<article class="dish-card"><strong>'+escapeHtml(dish.title)+'</strong><span>'+escapeHtml(detail)+'</span>'+extra+actions+'</article>';
  }).join("");
  $("#dish-count").textContent=visibleDishes.length+" Gerichte";
  $("#add-dish-button").hidden=!currentFamilyId;
  $("#dish-help").textContent=currentFamilyId?"Gerichte werden direkt in eurer gemeinsamen Familiensammlung gespeichert.":"Zum dauerhaften Hinzufügen und Bearbeiten bitte anmelden.";
  dishSection.hidden=false;
}
function showStarterDishes(){renderDishes(starterDishes);dishSection.scrollIntoView({behavior:"smooth",block:"start"});}
async function loadDishes(){
  if(!currentFamilyId)return;
  const {data,error}=await supabaseClient.from("dishes").select("id,title,description,category,prep_minutes,cook_minutes,servings,ingredients,instructions").eq("family_id",currentFamilyId).order("title");
  if(error){showMessage("Gerichte konnten nicht geladen werden: "+error.message);return;}
  renderDishes(data||[]);
}
if(showButton)showButton.addEventListener("click",async()=>{
  if(currentFamilyId){showMessage("Lade eure gespeicherten Gerichte …");await loadDishes();showMessage(visibleDishes.length+" Gerichte aus eurer Familiensammlung geladen.");}
  else{showStarterDishes();showMessage("Das sind Beispielgerichte. Für Änderungen bitte anmelden.");}
  dishSection.scrollIntoView({behavior:"smooth",block:"start"});
});
function resetDishForm(){
  dishForm.reset();editingDishId=null;$("#dish-form-title").textContent="Neues Gericht";
  $("#dish-prep").value=10;$("#dish-cook").value=10;$("#dish-servings").value=3;
  $("#save-dish-button").textContent="Speichern";setDishFormMessage("");
}
$("#add-dish-button").addEventListener("click",()=>{resetDishForm();dishForm.hidden=false;dishForm.scrollIntoView({behavior:"smooth",block:"center"});});
$("#cancel-dish-button").addEventListener("click",()=>{dishForm.hidden=true;resetDishForm();});
dishGrid.addEventListener("click",async event=>{
  const button=event.target.closest("button[data-action]");if(!button||!currentFamilyId)return;
  const dish=visibleDishes.find(item=>item.id===button.dataset.id);if(!dish)return;
  if(button.dataset.action==="edit"){
    editingDishId=dish.id;$("#dish-form-title").textContent="Gericht bearbeiten";
    $("#dish-title").value=dish.title||"";$("#dish-category").value=dish.category||"";
    $("#dish-prep").value=dish.prep_minutes??0;$("#dish-cook").value=dish.cook_minutes??0;
    $("#dish-servings").value=dish.servings||3;$("#dish-ingredients").value=Array.isArray(dish.ingredients)?dish.ingredients.join("\n"):"";
    $("#dish-instructions").value=dish.instructions||"";$("#save-dish-button").textContent="Änderungen speichern";
    setDishFormMessage("");dishForm.hidden=false;dishForm.scrollIntoView({behavior:"smooth",block:"center"});
  }else if(button.dataset.action==="delete"){
    if(!confirm('Soll das Gericht "'+dish.title+'" wirklich gelöscht werden?'))return;
    const {error}=await supabaseClient.from("dishes").delete().eq("id",dish.id).eq("family_id",currentFamilyId);
    if(error){showMessage("Löschen fehlgeschlagen: "+error.message);return;}
    showMessage("Gericht gelöscht.");await loadDishes();
  }
});
dishForm.addEventListener("submit",async event=>{
  event.preventDefault();if(!currentFamilyId||!currentUser){setDishFormMessage("Bitte zuerst anmelden.");return;}
  const title=$("#dish-title").value.trim();if(!title){setDishFormMessage("Bitte einen Gerichtenamen eingeben.");return;}
  const payload={title,category:$("#dish-category").value.trim()||null,prep_minutes:Number($("#dish-prep").value)||0,cook_minutes:Number($("#dish-cook").value)||0,servings:Number($("#dish-servings").value)||3,ingredients:$("#dish-ingredients").value.split("\n").map(line=>line.trim()).filter(Boolean),instructions:$("#dish-instructions").value.trim()||null};
  $("#save-dish-button").disabled=true;setDishFormMessage("Speichere …");
  let result;
  if(editingDishId)result=await supabaseClient.from("dishes").update(payload).eq("id",editingDishId).eq("family_id",currentFamilyId);
  else result=await supabaseClient.from("dishes").insert({...payload,family_id:currentFamilyId,created_by:currentUser.id});
  $("#save-dish-button").disabled=false;
  if(result.error){setDishFormMessage("Speichern fehlgeschlagen: "+result.error.message);return;}
  dishForm.hidden=true;resetDishForm();showMessage(editingDishId?"Gericht aktualisiert.":"Gericht hinzugefügt.");await loadDishes();
});
function setSession(session){
  currentUser=session?.user||null;
  if(currentUser){authForm.hidden=true;signedIn.hidden=false;$("#user-label").textContent="Angemeldet als "+currentUser.email;statusEl.innerHTML="<i></i> Konto verbunden";}
  else{authForm.hidden=false;signedIn.hidden=true;statusEl.innerHTML="<i></i> Nicht angemeldet";currentFamilyId=null;$("#add-dish-button").hidden=true;}
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
  currentFamilyId=members[0].family_id;await loadDishes();
  showMessage("Familiensammlung verbunden. "+visibleDishes.length+" Gerichte dauerhaft gespeichert.");
}
if(window.supabase&&cfg?.supabaseUrl&&cfg?.supabaseKey){
  supabaseClient=window.supabase.createClient(cfg.supabaseUrl,cfg.supabaseKey);
  supabaseClient.auth.getSession().then(async({data,error})=>{if(error)showMessage(error.message);setSession(data?.session);if(data?.session?.user)await loadOrCreateFamily(data.session.user);});
  supabaseClient.auth.onAuthStateChange(async(event,session)=>{setSession(session);if(session?.user&&event!=="INITIAL_SESSION")await loadOrCreateFamily(session.user);});
  $("#signup-button").addEventListener("click",async event=>{
    event.preventDefault();const email=$("#auth-email").value.trim(),password=$("#auth-password").value;
    if(!email||password.length<6){showMessage("Bitte E-Mail und ein Passwort mit mindestens 6 Zeichen eingeben.");return;}
    const {data,error}=await supabaseClient.auth.signUp({email,password,options:{emailRedirectTo:window.location.origin+window.location.pathname}});
    showMessage(error?error.message:(data.session?"Konto erstellt und angemeldet.":"Konto erstellt. Bitte bestätige deine E-Mail-Adresse über den zugesandten Link."));
  });
  $("#login-button").addEventListener("click",async()=>{const email=$("#auth-email").value.trim(),password=$("#auth-password").value;const {error}=await supabaseClient.auth.signInWithPassword({email,password});showMessage(error?error.message:"Anmeldung erfolgreich.");});
  $("#logout-button").addEventListener("click",async()=>{const {error}=await supabaseClient.auth.signOut();showMessage(error?error.message:"Du wurdest abgemeldet.");});
}else{statusEl.textContent="Verbindung nicht verfügbar";showMessage("Die Supabase-Bibliothek konnte nicht geladen werden. Bitte Seite neu laden.");}
if("serviceWorker"in navigator&&location.protocol.startsWith("http"))window.addEventListener("load",()=>navigator.serviceWorker.register("./sw.js").catch(error=>console.warn("Offline-Funktion konnte nicht aktiviert werden:",error)));
