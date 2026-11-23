const APP_BUILD_ID="2026-11-23.16";
const buildVersionElement=document.querySelector("#app-build-version");
if(buildVersionElement)buildVersionElement.textContent="Version "+APP_BUILD_ID+" · geladen "+new Date().toLocaleString("de-DE");
const starterDishes = [
  {title:"Spaghetti Bolognese",image:"./assets/spaghetti-bolognese.jpg",category:"Italienisch",prep_minutes:10,cook_minutes:20,servings:3,ingredients:["300 g Spaghetti","300 g Hackfleisch","1 Zwiebel","1 Möhre","1 Dose gehackte Tomaten","2 EL Tomatenmark"],instructions:"Spaghetti in Salzwasser al dente kochen. Zwiebel und Möhre fein würfeln und in etwas Öl anbraten. Hackfleisch dazugeben und krümelig braten. Tomatenmark einrühren, gehackte Tomaten zugeben und 10–15 Minuten köcheln lassen. Mit Salz, Pfeffer und Kräutern abschmecken und mit den Spaghetti servieren."},
  {title:"Hähnchen-Gemüse-Pfanne",category:"Pfanne",prep_minutes:10,cook_minutes:10,servings:3,ingredients:["400 g Hähnchenbrust","1 Paprika","1 Zucchini","1 Zwiebel","2 EL Öl","200 g Reis"],instructions:"Reis nach Packungsangabe garen. Hähnchen in mundgerechte Stücke schneiden und in Öl rundherum anbraten. Paprika, Zucchini und Zwiebel klein schneiden, zum Fleisch geben und 6–8 Minuten mitbraten. Würzen und zusammen mit dem Reis servieren."},
  {title:"Kartoffelgratin mit Salat",category:"Vegetarisch",prep_minutes:15,cook_minutes:30,servings:3,ingredients:["800 g Kartoffeln","200 ml Sahne","150 g geriebener Käse","1 Kopf grüner Salat","2 EL Essig","2 EL Öl"],instructions:"Backofen auf 200 °C Ober-/Unterhitze vorheizen. Kartoffeln schälen und in dünne Scheiben schneiden. In eine Auflaufform schichten, Sahne würzen und darübergeben, Käse darüberstreuen. Etwa 30 Minuten backen, bis die Kartoffeln weich sind. Salat waschen und mit Essig-Öl-Dressing servieren."},
  {title:"Wraps mit Hähnchen",category:"Schnell",prep_minutes:10,cook_minutes:10,servings:3,ingredients:["3 Weizentortillas","300 g Hähnchenbrust","1 Paprika","1 kleine Dose Mais","100 g Joghurt","1 Salatgurke"],instructions:"Hähnchen in Streifen schneiden, würzen und in einer Pfanne durchbraten. Paprika und Gurke klein schneiden, Salat waschen. Tortillas kurz erwärmen, mit Joghurt bestreichen und mit Hähnchen, Gemüse und Mais füllen. Aufrollen und servieren."},
  {title:"Nudel-Schinken-Auflauf",category:"Ofengericht",prep_minutes:10,cook_minutes:25,servings:3,ingredients:["300 g Nudeln","150 g Kochschinken","200 ml Sahne","150 g geriebener Käse","1 Ei"],instructions:"Nudeln knapp al dente kochen und abgießen. Schinken würfeln. Sahne mit Ei verquirlen und würzen. Nudeln und Schinken in eine Auflaufform geben, Sahnemischung darübergießen und Käse darüberstreuen. Bei 200 °C etwa 20–25 Minuten goldbraun backen."},
  {title:"Curry mit Reis",category:"Vegetarisch",prep_minutes:10,cook_minutes:15,servings:3,ingredients:["200 g Reis","1 Dose Kichererbsen","1 Dose Kokosmilch","300 g Gemüse","2 EL Currypaste"],instructions:"Reis nach Packungsangabe garen. Gemüse klein schneiden und in etwas Öl anbraten. Kichererbsen abspülen und mit Kokosmilch sowie Currypaste zum Gemüse geben. 8–10 Minuten köcheln lassen, abschmecken und mit Reis servieren."},
  {title:"Frikadellen mit Kartoffeln",category:"Klassiker",prep_minutes:15,cook_minutes:20,servings:3,ingredients:["400 g Hackfleisch","1 Ei","1 Zwiebel","3 EL Paniermehl","700 g Kartoffeln","1 EL Öl"],instructions:"Kartoffeln schälen, würfeln und in Salzwasser garen. Hackfleisch mit Ei, fein gewürfelter Zwiebel, Paniermehl und Gewürzen verkneten. Frikadellen formen und in Öl bei mittlerer Hitze von beiden Seiten durchbraten. Mit den Kartoffeln servieren."},
  {title:"Ofengemüse mit Feta",category:"Vegetarisch",prep_minutes:10,cook_minutes:20,servings:3,ingredients:["2 Paprika","1 Zucchini","500 g Kartoffeln","200 g Feta","2 EL Öl"],instructions:"Backofen auf 200 °C vorheizen. Kartoffeln und Gemüse in mundgerechte Stücke schneiden, mit Öl, Salz, Pfeffer und Kräutern mischen. Auf einem Blech verteilen und etwa 20 Minuten backen, bis alles gar ist. Feta darüberbröseln und kurz weiterbacken."},
  {title:"Tomatensuppe mit Brot",category:"Schnell",prep_minutes:5,cook_minutes:15,servings:3,ingredients:["2 Dosen gehackte Tomaten","1 Zwiebel","500 ml Gemüsebrühe","100 ml Sahne","1 Baguette"],instructions:"Zwiebel würfeln und in etwas Öl glasig dünsten. Tomaten und Gemüsebrühe zugeben und 10 Minuten köcheln lassen. Suppe fein pürieren, Sahne einrühren und abschmecken. Mit erwärmtem oder frischem Baguette servieren."},
  {title:"Lachs mit Ofenkartoffeln",category:"Fisch",prep_minutes:10,cook_minutes:20,servings:3,ingredients:["3 Lachsfilets","700 g Kartoffeln","1 Zitrone","2 EL Öl","150 g Joghurt"],instructions:"Backofen auf 200 °C vorheizen. Kartoffeln in Spalten schneiden, mit Öl und Gewürzen mischen und etwa 20 Minuten backen. Lachs würzen und in den letzten 12–15 Minuten mit auf das Blech geben. Joghurt mit Zitronensaft und Kräutern verrühren und dazu servieren."},
  {title:"Penne in Tomatensoße",category:"Italienisch",prep_minutes:5,cook_minutes:15,servings:3,ingredients:["300 g Penne","1 Dose gehackte Tomaten","1 Zwiebel","2 EL Tomatenmark","50 g Parmesan"],instructions:"Penne in Salzwasser al dente kochen. Zwiebel fein würfeln und in etwas Öl anbraten. Tomatenmark kurz mitrösten, gehackte Tomaten zugeben und 8–10 Minuten köcheln lassen. Abschmecken und mit Penne sowie Parmesan servieren."},
  {title:"Bauernomelett",category:"Schnell",prep_minutes:5,cook_minutes:10,servings:3,ingredients:["6 Eier","400 g Kartoffeln","1 Paprika","1 Zwiebel","100 ml Milch"],instructions:"Kartoffeln in kleine Würfel schneiden und in einer Pfanne mit etwas Öl 8–10 Minuten braten. Paprika und Zwiebel würfeln und kurz mitbraten. Eier mit Milch, Salz und Pfeffer verquirlen, darübergießen und bei kleiner Hitze stocken lassen."}
];
const $=selector=>document.querySelector(selector);
const showButton=$("#show-dishes"),dishSection=$("#dishes-section"),dishGrid=$("#dish-grid");
const weeklySection=$("#weekly-section");
function setQuickNavActive(action){
  const links=$("#quick-nav-links");
  if(!links)return;
  links.querySelectorAll("[data-nav-action]").forEach(button=>{
    const active=button.dataset.navAction===action;
    button.classList.toggle("active",active);
    if(active)button.setAttribute("aria-current","page");
    else button.removeAttribute("aria-current");
  });
}
setQuickNavActive("home");
if(weeklySection&&dishSection){const featureGrid=document.querySelector(".feature-grid");if(featureGrid)featureGrid.insertAdjacentElement("afterend",weeklySection);weeklySection.insertAdjacentElement("afterend",dishSection);}
const cfg=window.FAMILY_APP_CONFIG,statusEl=$("#sync-status"),messageEl=$("#auth-message");
const authForm=$("#auth-form"),signedIn=$("#account-logged-in"),dishForm=$("#dish-form"),authPanel=$("#auth-panel");
let supabaseClient=null,currentFamilyId=null,currentUser=null,editingDishId=null,authMode="login";
let pendingFamilyInvite=new URLSearchParams(window.location.search).get("familyInvite");
let inviteAcceptanceInProgress=false,acceptedFamilyInviteToken=null;
let visibleDishes=[];
let dishQuickCategory="Alle";
function showMessage(message){if(messageEl)messageEl.textContent=message;}
function showFamilyMessage(message){const familyMessage=$("#family-message");if(familyMessage)familyMessage.textContent=message;showMessage(message);}
function escapeHtml(value){return String(value??"").replace(/[&<>"']/g,char=>({"&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#39;"}[char]));}
function setDishFormMessage(message){$("#dish-form-message").textContent=message;}
function renderDishes(dishes){
  visibleDishes=dishes||[];
  const categoryFilter=$("#dish-category-filter");
  const previousCategory=categoryFilter?.value||"";
  const categories=[...new Set(visibleDishes.map(dish=>dish.category||"Sonstiges"))].sort((a,b)=>a.localeCompare(b,"de"));
  if(categoryFilter){categoryFilter.innerHTML='<option value="">Alle Kategorien</option>'+categories.map(category=>'<option value="'+escapeHtml(category)+'">'+escapeHtml(category)+'</option>').join("");categoryFilter.value=categories.includes(previousCategory)?previousCategory:"";}
  const term=($("#dish-search")?.value||"").trim().toLocaleLowerCase("de-DE");
  const selectedCategory=categoryFilter?.value||"";
  const maxTime=Number($("#dish-time-filter")?.value)||0;
  const favoriteIds=JSON.parse(localStorage.getItem("familyPlannerFavorites")||"[]");
  const viewFilter=$("#dish-view-filter")?.value||"all";
  const quickTerms={
    "Fleisch":/hack|hähnchen|huhn|rind|schwein|fleisch|schnitzel|frikadelle|schinken/i,
    "Fisch":/fisch|lachs|thunfisch|kabeljau|forelle|garnele/i,
    "Suppen":/suppe|eintopf|brühe|cremesuppe/i,
    "Vegetarisch":/vegetarisch|gemüse|feta|käse|omelett|kichererbse|linsen/i,
    "Nudelgerichte":/nudel|pasta|penne|spaghetti|lasagne|gnocchi/i
  };
  const filteredDishes=visibleDishes.filter(dish=>{
    const searchable=[dish.title,dish.category,...(dish.ingredients||[])].join(" ");
    return (viewFilter!=="favorites"||favoriteIds.includes(String(dish.id||dish.title)))&&
      (!selectedCategory||(dish.category||"Sonstiges")===selectedCategory)&&
      (!maxTime||((Number(dish.prep_minutes)||0)+(Number(dish.cook_minutes)||0))<=maxTime)&&
      (!term||searchable.toLocaleLowerCase("de-DE").includes(term))&&
      (dishQuickCategory==="Alle"||quickTerms[dishQuickCategory]?.test(searchable));
  });
  $("#dish-results-count").textContent=filteredDishes.length+" von "+visibleDishes.length+" Gerichten";
  dishGrid.innerHTML=filteredDishes.map(dish=>{
    const total=(Number(dish.prep_minutes)||0)+(Number(dish.cook_minutes)||0);
    const detail=[dish.category||"Gericht",total?("ca. "+total+" Min."):""].filter(Boolean).join(" · ");
    const ingredients=Array.isArray(dish.ingredients)?dish.ingredients.join("\n"):"";
    const extra=(ingredients||dish.instructions)?'<details class="dish-details"><summary>Zutaten und Zubereitung</summary>'+(ingredients?'<p><strong>Zutaten:</strong>\n'+escapeHtml(ingredients)+'</p>':'')+(dish.instructions?'<p><strong>Zubereitung:</strong>\n'+escapeHtml(dish.instructions)+'</p>':'')+'</details>':'';
    const actions=currentFamilyId?'<div class="dish-actions"><button type="button" data-action="edit" data-id="'+dish.id+'">Bearbeiten</button><button type="button" class="delete" data-action="delete" data-id="'+dish.id+'">Löschen</button></div>':'';
    const favoriteId=String(dish.id||dish.title),isFavorite=favoriteIds.includes(favoriteId);
    const visual=dish.image?'<img src="'+escapeHtml(dish.image)+'" alt="" loading="lazy">':'<span>'+getDishVisual(dish.title)+'</span>';
    return '<article class="dish-card"><div class="dish-card-visual">'+visual+'</div><div class="dish-card-title"><strong>'+escapeHtml(dish.title)+'</strong><button type="button" class="dish-favorite '+(isFavorite?'active':'')+'" data-favorite-id="'+escapeHtml(favoriteId)+'" aria-label="'+(isFavorite?'Favorit entfernen':'Als Favorit speichern')+'">'+(isFavorite?'★':'☆')+'</button></div><span>'+escapeHtml(detail)+'</span>'+extra+actions+'</article>';
  }).join("");
  dishGrid.scrollLeft=0;
  $("#dish-carousel-prev").disabled=true;
  $("#dish-carousel-next").disabled=filteredDishes.length<=5;
  $("#dish-quick-categories").querySelectorAll("[data-quick-category]").forEach(button=>{
    const active=button.dataset.quickCategory===dishQuickCategory;
    button.classList.toggle("active",active);
    button.setAttribute("aria-pressed",String(active));
  });
  $("#dish-count").textContent=visibleDishes.length+" Gerichte";
  $("#add-dish-button").hidden=!currentFamilyId;
  $("#dish-help").textContent=currentFamilyId?"Gerichte werden direkt in eurer gemeinsamen Familiensammlung gespeichert.":"Zum dauerhaften Hinzufügen und Bearbeiten bitte anmelden.";
}
function showStarterDishes(){renderDishes(starterDishes);dishSection.scrollIntoView({behavior:"smooth",block:"start"});}
async function loadDishes(){
  if(!currentFamilyId)return;
  const {data,error}=await supabaseClient.from("dishes").select("id,title,description,category,prep_minutes,cook_minutes,servings,ingredients,instructions").eq("family_id",currentFamilyId).order("title");
  if(error){showMessage("Gerichte konnten nicht geladen werden: "+error.message);return;}
  renderDishes((data||[]).map(dish=>{const starter=starterDishes.find(item=>item.title===dish.title);return {...starter,...dish,instructions:dish.instructions||starter?.instructions||null};}));
}
if(showButton)showButton.addEventListener("click",async()=>{
  if(!dishSection.hidden){dishSection.hidden=true;return;}
  dishSection.hidden=false;
  if(!currentFamilyId){authMode="login";showMessage("Bitte melde dich an, um eure Rezeptsammlung zu entdecken.");authPanel.hidden=false;$("#auth-dialog-title").textContent="Bitte anmelden";$("#auth-dialog-copy").textContent="Nach der Anmeldung kannst du eure Gerichte entdecken und verwalten.";return;}
  showMessage("Lade eure gespeicherten Gerichte …");await loadDishes();showMessage(visibleDishes.length+" Gerichte aus eurer Familiensammlung geladen.");
  dishSection.scrollIntoView({behavior:"smooth",block:"start"});
});
function resetDishForm(){
  dishForm.reset();editingDishId=null;$("#dish-form-title").textContent="Neues Gericht";
  $("#dish-prep").value=10;$("#dish-cook").value=10;$("#dish-servings").value=3;
  $("#save-dish-button").textContent="Speichern";setDishFormMessage("");
}
$("#add-dish-button").addEventListener("click",()=>{resetDishForm();dishForm.hidden=false;dishForm.scrollIntoView({behavior:"smooth",block:"center"});});
$("#cancel-dish-button").addEventListener("click",()=>{dishForm.hidden=true;resetDishForm();});
dishGrid.addEventListener("click",event=>{
  const favoriteButton=event.target.closest("[data-favorite-id]");if(!favoriteButton)return;
  const favorites=new Set(JSON.parse(localStorage.getItem("familyPlannerFavorites")||"[]"));
  const id=favoriteButton.dataset.favoriteId;
  if(favorites.has(id))favorites.delete(id);else favorites.add(id);
  localStorage.setItem("familyPlannerFavorites",JSON.stringify([...favorites]));
  renderDishes(visibleDishes);
});
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
  const wasEditing=Boolean(editingDishId);dishForm.hidden=true;resetDishForm();showMessage(wasEditing?"Gericht aktualisiert.":"Gericht hinzugefügt.");await loadDishes();
});
function setSession(session){
  currentUser=session?.user||null;
  if(currentUser){authForm.hidden=true;signedIn.hidden=false;$("#account-actions").hidden=true;$("#user-label").textContent=currentUser.email||"Angemeldet";statusEl.innerHTML="<i></i> Konto verbunden";authPanel.hidden=true;}
  else{authForm.hidden=false;signedIn.hidden=true;$("#account-actions").hidden=false;statusEl.innerHTML="<i></i> Nicht angemeldet";currentFamilyId=null;visibleDishes=[];dishSection.hidden=true;$("#add-dish-button").hidden=true;if(typeof renderWeekPlan==="function"){currentWeekMeals=[];renderWeekPlan();}}
}
async function loadFamilyInfo(){
  if(!currentFamilyId||!currentUser)return;
  const list=$("#family-members");
  const {data:members,error}=await supabaseClient.from("family_members").select("user_id,role,joined_at").eq("family_id",currentFamilyId).order("joined_at",{ascending:true});
  if(error){showFamilyMessage("Familienmitglieder konnten nicht geladen werden: "+error.message);return;}
  list.innerHTML=(members||[]).map((member,index)=>'<div class="family-member"><span class="family-member-avatar">👤</span><span><strong>'+ (member.user_id===currentUser.id?"Du":("Familienmitglied "+(index+1))) +'</strong><small>'+ (member.role==="owner"?"Eigentümer":"Mitglied") +'</small></span></div>').join("");
  const isOwner=(members||[]).some(member=>member.user_id===currentUser.id&&member.role==="owner");
  $("#family-invite-controls").hidden=!isOwner;
  $("#family-member-count").textContent=(members||[]).length+" "+((members||[]).length===1?"Mitglied":"Mitglieder");
}
async function acceptPendingFamilyInvite(user){
  if(!pendingFamilyInvite||acceptedFamilyInviteToken===pendingFamilyInvite||inviteAcceptanceInProgress)return false;
  inviteAcceptanceInProgress=true;
  showFamilyMessage("Familieneinladung wird geprüft …");
  const token=pendingFamilyInvite;
  const {data,error}=await supabaseClient.rpc("accept_family_invitation",{invitation_token:token});
  inviteAcceptanceInProgress=false;
  if(error){showFamilyMessage("Einladung konnte nicht angenommen werden: "+error.message);return true;}
  currentFamilyId=data;
  localStorage.setItem("familyPlannerActiveFamilyId",currentFamilyId);
  acceptedFamilyInviteToken=token;
  pendingFamilyInvite=null;
  const cleanUrl=new URL(window.location.href);cleanUrl.searchParams.delete("familyInvite");
  window.history.replaceState({},document.title,cleanUrl.pathname+cleanUrl.search+cleanUrl.hash);
  await loadDishes();
  await loadFamilyInfo();
  if(!$("#weekly-section").hidden)await loadWeekPlan();
  showFamilyMessage("Du bist der Familie erfolgreich beigetreten. Eure Inhalte werden jetzt gemeinsam genutzt.");
  return true;
}
async function loadOrCreateFamily(user){
  if(pendingFamilyInvite){
    const handled=await acceptPendingFamilyInvite(user);
    if(handled)return;
  }
  showFamilyMessage("Verbinde eure Familiensammlung …");
  let {data:members,error}=await supabaseClient.from("family_members").select("family_id,role,joined_at").eq("user_id",user.id).order("joined_at",{ascending:true});
  if(error){showFamilyMessage("Familienkonto konnte nicht geladen werden: "+error.message);return;}
  if(!members?.length){
    const {error:createError}=await supabaseClient.from("families").insert({name:"Meine Familie",created_by:user.id});
    if(createError){showFamilyMessage("Familienkonto konnte nicht angelegt werden: "+createError.message);return;}
    const result=await supabaseClient.from("family_members").select("family_id,role,joined_at").eq("user_id",user.id).order("joined_at",{ascending:true});
    members=result.data;error=result.error;
    if(error||!members?.length){showFamilyMessage("Familienkonto wurde angelegt, die Mitgliedschaft konnte aber nicht geladen werden.");return;}
    const familyId=members[0].family_id;
    const {error:seedError}=await supabaseClient.from("dishes").insert(starterDishes.map(dish=>({...dish,family_id:familyId,servings:3,created_by:user.id})));
    if(seedError){showFamilyMessage("Familienkonto steht. Die Beispieldaten konnten noch nicht gespeichert werden: "+seedError.message);return;}
  }
  const preferredFamilyId=localStorage.getItem("familyPlannerActiveFamilyId");
  const selectedMember=members.find(member=>member.family_id===preferredFamilyId)||members[0];
  currentFamilyId=selectedMember.family_id;
  localStorage.setItem("familyPlannerActiveFamilyId",currentFamilyId);
  await loadDishes();
  await loadFamilyInfo();
  weeklySection.hidden=false;
  await loadWeekPlan();
  showFamilyMessage("Familiensammlung verbunden. "+visibleDishes.length+" Gerichte dauerhaft gespeichert.");
}

let weekOffset=0;
let currentWeekMeals=[];
let weekDayCount=Number(localStorage.getItem("familyPlannerWeekDayCount"))===7?7:5;
const weekDays=["Montag","Dienstag","Mittwoch","Donnerstag","Freitag","Samstag","Sonntag"];
function getWeekDates(count=weekDayCount){
  const monday=new Date();monday.setHours(12,0,0,0);
  monday.setDate(monday.getDate()-((monday.getDay()+6)%7)+(weekOffset*7));
  return weekDays.slice(0,count).map((name,index)=>{const date=new Date(monday);date.setDate(monday.getDate()+index);return {name,date,iso:date.getFullYear()+"-"+String(date.getMonth()+1).padStart(2,"0")+"-"+String(date.getDate()).padStart(2,"0")};});
}
function renderWeekIngredients(day,dish,servings){
  const target=$("#week-ingredients-"+day.iso);
  if(!target)return;
  if(!dish){target.innerHTML='<p class="week-ingredients-empty">Noch keine Zutaten – wähle ein Abendessen.</p>';return;}
  const ingredients=Array.isArray(dish.ingredients)?dish.ingredients:[];
  if(!ingredients.length){target.innerHTML='<p class="week-ingredients-empty">Keine Zutaten hinterlegt</p>';return;}
  const factor=Math.max(1,Number(servings)||3)/(Number(dish.servings)||3);
  target.innerHTML='<strong class="week-ingredients-title">Zutaten</strong>'+ingredients.map(line=>{
    const item=parseShoppingIngredient(line,factor);
    const quantity=item.amount===null?"":formatIngredientQuantity(item);
    return '<label class="week-ingredient"><input type="checkbox"><span>'+escapeHtml(quantity+item.name)+'</span></label>';
  }).join("");
}
function getDishVisual(title){
  const value=String(title||"").toLocaleLowerCase("de-DE");
  if(/spaghetti|pasta|nudel|lasagne|carbonara/.test(value))return "🍝";
  if(/hähnchen|huhn|chicken|geflügel/.test(value))return "🍗";
  if(/kartoffel|gratin|auflauf/.test(value))return "🥘";
  if(/wrap|tortilla|burrito/.test(value))return "🌯";
  if(/curry|reis|asiatisch/.test(value))return "🍛";
  if(/salat|bowl/.test(value))return "🥗";
  if(/suppe|eintopf/.test(value))return "🍲";
  if(/pizza/.test(value))return "🍕";
  if(/fisch|lachs/.test(value))return "🐟";
  return "🍽️";
}
function renderWeekPlan(){
  const dates=getWeekDates(),first=dates[0].date,last=dates[dates.length-1].date;
  const format=date=>date.toLocaleDateString("de-DE",{day:"2-digit",month:"2-digit",year:"numeric"});
  $("#week-label").textContent=format(first)+" – "+format(last);
  $("#week-day-range").textContent=weekDayCount===7?"Montag bis Sonntag":"Montag bis Freitag";
  $("#week-grid").classList.toggle("week-grid-seven",weekDayCount===7);
  const dishes=visibleDishes.length?visibleDishes:starterDishes;
  $("#week-grid").innerHTML=dates.map(day=>{
    const meal=currentWeekMeals.find(item=>item.planned_for===day.iso);
    const options='<option value="">Noch kein Gericht ausgewählt</option>'+dishes.map(dish=>'<option value="'+escapeHtml(dish.id||dish.title)+'" '+((meal&&(meal.dish_id===dish.id||meal.preview_title===dish.title))?'selected':'')+'>'+escapeHtml(dish.title)+'</option>').join("");
    const selectedDish=meal?dishes.find(dish=>dish.id===meal.dish_id||dish.title===meal.preview_title):null;
    const servings=Math.max(1,Number(meal?.servings)||3);
    const recipeButton=selectedDish?'<button type="button" class="week-recipe-button" data-recipe-title="'+escapeHtml(selectedDish.title)+'" data-date="'+day.iso+'">Rezept ansehen →</button>':"";
    const ingredientMarkup=selectedDish&&Array.isArray(selectedDish.ingredients)&&selectedDish.ingredients.length?'<strong class="week-ingredients-title">Zutaten (für '+servings+' Personen)</strong>'+selectedDish.ingredients.map(line=>{
      const item=parseShoppingIngredient(line,servings/(Number(selectedDish.servings)||3));
      const quantity=item.amount===null?"":formatIngredientQuantity(item);
      return '<label class="week-ingredient"><input type="checkbox"><span>'+escapeHtml(quantity+item.name)+'</span></label>';
    }).join(""):'<p class="week-ingredients-empty">Wähle ein Gericht, um die Zutaten zu sehen.</p>';
    const title=selectedDish?escapeHtml(selectedDish.title):"Noch kein Gericht geplant";
    return '<article class="week-day"><div class="week-day-heading"><strong>'+day.name+'</strong><span>'+format(day.date)+'</span></div><div class="week-dish-visual" aria-hidden="true">'+(selectedDish?.image?'<img src="'+escapeHtml(selectedDish.image)+'" alt="'+escapeHtml(selectedDish.title)+'" loading="lazy">':'<span>'+getDishVisual(selectedDish?.title)+'</span>')+'</div><h3 class="week-dish-title">'+title+'</h3><div class="week-servings-row"><span>Portionen:</span><div class="week-serving-control"><button type="button" data-serving-change="-1" aria-label="Eine Portion weniger">−</button><input class="week-servings" data-date="'+day.iso+'" type="number" min="1" max="30" value="'+servings+'" aria-label="Portionen für '+day.name+'"><button type="button" data-serving-change="1" aria-label="Eine Portion mehr">+</button></div></div>'+recipeButton+'<details class="week-edit-controls"><summary>Gericht ändern</summary><label>Gericht suchen<input class="week-dish-search" data-date="'+day.iso+'" type="search" placeholder="Gericht finden …" aria-label="Gericht für '+day.name+' suchen"></label><label>Abendessen<select class="week-dish-select" data-date="'+day.iso+'">'+options+'</select></label></details><div class="week-ingredients" id="week-ingredients-'+day.iso+'">'+ingredientMarkup+'</div></article>';
  }).join("");
  $("#week-help").textContent=currentFamilyId?"Wählt für jeden Tag ein Gericht. Passt die Portionen an und hakt Zutaten direkt ab. Änderungen werden erst nach Klick auf „Wochenplan speichern“ übernommen.":"Vorschau: Zum dauerhaften Speichern bitte anmelden.";
  $("#save-week-plan").disabled=!currentFamilyId;
}
function renderRecipeDialog(dish,servings){
  const base=Number(dish.servings)||3;
  const factor=Math.max(1,Number(servings)||base)/base;
  $("#recipe-title").textContent=dish.title;
  const total=(Number(dish.prep_minutes)||0)+(Number(dish.cook_minutes)||0);
  $("#recipe-meta").textContent=[dish.category||"Familienrezept",total?"ca. "+total+" Minuten":""].filter(Boolean).join(" · ");
  $("#recipe-servings").value=Math.max(1,Number(servings)||base);
  const ingredients=Array.isArray(dish.ingredients)?dish.ingredients:[];
  $("#recipe-ingredients").innerHTML=ingredients.length?'<ul class="recipe-ingredient-list">'+ingredients.map(line=>{
    const item=parseShoppingIngredient(line,factor);
    const amount=item.amount===null?"":formatIngredientQuantity(item);
    return '<li>'+escapeHtml(amount+item.name)+'</li>';
  }).join("")+'</ul>':'<p class="notice">Für dieses Gericht sind noch keine Zutaten hinterlegt.</p>';
  const instructions=String(dish.instructions||"").split(/\\n|(?<=\\.)\\s+(?=[A-ZÄÖÜ])/).map(step=>step.trim()).filter(Boolean);
  $("#recipe-instructions").innerHTML=instructions.length?instructions.map(step=>'<li>'+escapeHtml(step)+'</li>').join(""):'<li>Für dieses Gericht ist noch keine Zubereitungsanleitung hinterlegt.</li>';
  $("#recipe-panel").dataset.recipeTitle=dish.title;
  $("#recipe-panel").hidden=false;
}
function openRecipeForTitle(title,servings){
  const dishes=visibleDishes.length?visibleDishes:starterDishes;
  const dish=dishes.find(item=>item.title===title)||starterDishes.find(item=>item.title===title);
  if(dish)renderRecipeDialog(dish,servings);
}
$("#week-grid").addEventListener("click",event=>{
  const servingButton=event.target.closest("[data-serving-change]");
  if(servingButton){
    const input=servingButton.closest(".week-day")?.querySelector(".week-servings");
    if(input){input.value=Math.max(1,Math.min(30,(Number(input.value)||1)+Number(servingButton.dataset.servingChange)));input.dispatchEvent(new Event("change",{bubbles:true}));}
    return;
  }
  const button=event.target.closest(".week-recipe-button");
  if(!button)return;
  const day=button.dataset.date;
  const servings=Number(document.querySelector('.week-servings[data-date="'+day+'"]')?.value)||3;
  $("#recipe-panel").dataset.recipeDate=day;
  openRecipeForTitle(button.dataset.recipeTitle,servings);
});
$("#close-recipe").addEventListener("click",()=>{$("#recipe-panel").hidden=true;});
$("#recipe-panel").addEventListener("click",event=>{if(event.target.id==="recipe-panel")$("#recipe-panel").hidden=true;});
$("#recipe-servings").addEventListener("change",()=>{
  const title=$("#recipe-panel").dataset.recipeTitle;
  const servings=Math.max(1,Math.min(30,Number($("#recipe-servings").value)||1));
  const day=$("#recipe-panel").dataset.recipeDate;
  const weekInput=day?document.querySelector('.week-servings[data-date="'+day+'"]'):null;
  if(weekInput){weekInput.value=servings;weekInput.dispatchEvent(new Event("change",{bubbles:true}));}
  if(title)openRecipeForTitle(title,servings);
});
$("#week-grid").addEventListener("input",event=>{
  const search=event.target.closest(".week-dish-search");
  if(search){const select=search.closest(".week-day").querySelector(".week-dish-select");const term=search.value.trim().toLocaleLowerCase("de-DE");if(select)[...select.options].forEach((option,index)=>{option.hidden=index>0&&term&&!option.textContent.toLocaleLowerCase("de-DE").includes(term);});return;}
});
$("#week-grid").addEventListener("change",event=>{
  const control=event.target.closest(".week-dish-select,.week-servings");
  if(!control)return;
  const day=getWeekDates().find(item=>item.iso===control.dataset.date);
  if(!day)return;
  const dishes=visibleDishes.length?visibleDishes:starterDishes;
  const select=document.querySelector('.week-dish-select[data-date="'+day.iso+'"]');
  const servings=document.querySelector('.week-servings[data-date="'+day.iso+'"]');
  const dish=dishes.find(item=>String(item.id||item.title)===(select?.value||""));
  renderWeekIngredients(day,dish,servings?.value||3);
  const card=control.closest(".week-day");
  const titleNode=card?.querySelector(".week-dish-title");
  const visualNode=card?.querySelector(".week-dish-visual");
  if(titleNode)titleNode.textContent=dish?.title||"Noch kein Gericht geplant";
  if(visualNode)visualNode.innerHTML=dish?.image?'<img src="'+escapeHtml(dish.image)+'" alt="'+escapeHtml(dish.title)+'" loading="lazy">':'<span>'+getDishVisual(dish?.title)+'</span>';
  let recipeButton=card?.querySelector(".week-recipe-button");
  if(dish){if(!recipeButton){$("#week-ingredients-"+day.iso).insertAdjacentHTML("beforebegin",'<button type="button" class="week-recipe-button">Rezept ansehen →</button>');recipeButton=card?.querySelector(".week-recipe-button");}if(recipeButton){recipeButton.dataset.recipeTitle=dish.title;recipeButton.dataset.date=day.iso;}}
  else if(recipeButton)recipeButton.remove();
});
async function loadWeekPlan(){
  if(!currentFamilyId){currentWeekMeals=[];renderWeekPlan();return;}
  const dates=getWeekDates(7);
  const {data,error}=await supabaseClient.from("weekly_meals").select("id,dish_id,planned_for,servings").eq("family_id",currentFamilyId).eq("meal_slot","dinner").gte("planned_for",dates[0].iso).lte("planned_for",dates[6].iso);
  if(error){$("#week-message").textContent="Wochenplan konnte nicht geladen werden: "+error.message;return;}
  currentWeekMeals=data||[];renderWeekPlan();
}
$("#show-week-plan").addEventListener("click",async()=>{
  setQuickNavActive("week");
  $("#weekly-section").hidden=false;
  if(currentFamilyId)await loadWeekPlan();else{currentWeekMeals=[];renderWeekPlan();}
  $("#weekly-section").scrollIntoView({behavior:"smooth",block:"start"});
});
$("#week-day-count").value=String(weekDayCount);
$("#week-day-count").addEventListener("change",event=>{weekDayCount=Number(event.target.value)===7?7:5;localStorage.setItem("familyPlannerWeekDayCount",String(weekDayCount));renderWeekPlan();});
$("#previous-week").addEventListener("click",async()=>{weekOffset--;if(currentFamilyId)await loadWeekPlan();else renderWeekPlan();});
$("#next-week").addEventListener("click",async()=>{weekOffset++;if(currentFamilyId)await loadWeekPlan();else renderWeekPlan();});
$("#save-week-plan").addEventListener("click",async()=>{
  if(!currentFamilyId||!currentUser){$("#week-message").textContent="Bitte zuerst anmelden.";return;}
  const dates=getWeekDates();
  const meals=dates.map(day=>{
    const select=document.querySelector('.week-dish-select[data-date="'+day.iso+'"]');
    const servings=document.querySelector('.week-servings[data-date="'+day.iso+'"]');
    return {day,dishId:select?.value||"",servings:Math.max(1,Math.min(30,Number(servings?.value)||3))};
  }).filter(item=>item.dishId);
  const invalid=meals.find(item=>!visibleDishes.some(dish=>dish.id===item.dishId));
  if(invalid){$("#week-message").textContent="Bitte zuerst anmelden und eure Gerichte laden.";return;}
  const button=$("#save-week-plan");button.disabled=true;$("#week-message").textContent="Speichere Wochenplan …";
  const {error:deleteError}=await supabaseClient.from("weekly_meals").delete().eq("family_id",currentFamilyId).eq("meal_slot","dinner").gte("planned_for",dates[0].iso).lte("planned_for",dates[dates.length-1].iso);
  if(deleteError){button.disabled=false;$("#week-message").textContent="Speichern fehlgeschlagen: "+deleteError.message;return;}
  let insertError=null;
  if(meals.length){
    const {error}=await supabaseClient.from("weekly_meals").insert(meals.map(item=>({family_id:currentFamilyId,dish_id:item.dishId,planned_for:item.day.iso,meal_slot:"dinner",servings:item.servings,created_by:currentUser.id})));
    insertError=error;
  }
  button.disabled=false;
  if(insertError){$("#week-message").textContent="Der Plan konnte nicht vollständig gespeichert werden: "+insertError.message;return;}
  $("#week-message").textContent=meals.length+" Abendessen gespeichert.";
  await loadWeekPlan();
});

function formatIngredientAmount(amount,unit){
  if(amount===null||amount===undefined||!Number.isFinite(Number(amount)))return "";
  const value=Number(amount);
  const normalized=String(unit||"").toLowerCase().replace(/\./g,"");
  const countUnits=["","stück","stk","dose","dosen","packung","packungen"];
  if(["g","ml"].includes(normalized)){
    return (value>0?Math.max(1,Math.round(value)):0).toLocaleString("de-DE");
  }
  if(countUnits.includes(normalized)){
    return (value>0?Math.max(1,Math.round(value)):0).toLocaleString("de-DE");
  }
  if(["el","tl"].includes(normalized)){
    const quarters=Math.round(value*4),whole=Math.floor(quarters/4),fraction=["","¼","½","¾"][quarters%4];
    return (whole?String(whole):"")+(fraction||(!whole?"0":""));
  }
  return Number(value.toFixed(2)).toLocaleString("de-DE",{maximumFractionDigits:2});
}
function formatIngredientQuantity(item){
  const amount=formatIngredientAmount(item.amount,item.unit);
  return amount+(item.unit?" "+item.unit+" ":amount?" ":"");
}
function parseShoppingIngredient(line, factor){
  const text=String(line||"").trim();
  const match=text.match(/^([0-9]+(?:[.,][0-9]+)?)\s*(kg|g|l|ml|EL|TL|Stück|Stk\.?|Dose|Dosen|Packung|Packungen)?\s+(.+)$/i);
  if(!match)return {name:text,amount:null,unit:"",key:text.toLocaleLowerCase("de-DE")};
  const amount=Number(match[1].replace(",","."))*factor;
  const unit=(match[2]||"").toLowerCase();
  const name=match[3].trim();
  return {name,amount,unit,key:(name+"|"+unit).toLocaleLowerCase("de-DE")};
}
function renderShoppingList(){
  const dates=getWeekDates();
  const dishes=visibleDishes.length?visibleDishes:starterDishes;
  const selected=dates.map(day=>{
    const select=document.querySelector('.week-dish-select[data-date="'+day.iso+'"]');
    const servingsInput=document.querySelector('.week-servings[data-date="'+day.iso+'"]');
    const value=select?.value||"";
    const dish=dishes.find(item=>String(item.id||item.title)===value);
    return dish?{day,dish,servings:Math.max(1,Number(servingsInput?.value)||3)}:null;
  });
  const totals=new Map(),missing=[];
  const formatQuantity=item=>item.amount===null?"":(formatIngredientQuantity(item));
  selected.filter(Boolean).forEach(({day,dish,servings})=>{
    const base=Number(dish.servings)||3;
    const ingredients=Array.isArray(dish.ingredients)?dish.ingredients:[];
    if(!ingredients.length)missing.push(dish.title);
    ingredients.forEach(line=>{
      const item=parseShoppingIngredient(line,servings/base);
      const existing=totals.get(item.key);
      if(existing&&item.amount!==null&&existing.amount!==null)existing.amount+=item.amount;
      else if(!existing)totals.set(item.key,{...item,days:[day.name]});
      else if(!existing.days.includes(day.name))existing.days.push(day.name);
    });
  });
  const list=[...totals.values()].sort((a,b)=>a.name.localeCompare(b.name,"de"));
  currentShoppingIngredients=list.map(item=>item.name);
  const container=$("#shopping-list-items");
  container.innerHTML=list.length?list.map((item,index)=>{
    return '<label class="shopping-item"><input type="checkbox" data-shopping-item="'+index+'"><span><strong>'+escapeHtml(formatQuantity(item)+item.name)+'</strong><small>'+escapeHtml(item.days.join(", "))+'</small></span></label>';
  }).join(""):'<p class="notice">Wähle im Wochenplan zuerst mindestens ein Gericht aus.</p>';
  $("#shopping-list-note").textContent=selected.filter(Boolean).length+" Gerichte berücksichtigt · "+list.length+" zusammengefasste Zutatenpositionen"+(missing.length?" · Für "+[...new Set(missing)].join(", ")+" fehlen noch Zutatenangaben.":"");
  setQuickNavActive("shopping");
  $("#shopping-section").hidden=false;
  $("#shopping-section").scrollIntoView({behavior:"smooth",block:"start"});
}
$("#create-shopping-list").addEventListener("click",renderShoppingList);

let currentShoppingIngredients=[];
function normalizeOfferText(value){
  return String(value||"").toLocaleLowerCase("de-DE").normalize("NFD").replace(/[\u0300-\u036f]/g,"")
    .replace(/ß/g,"ss").replace(/[^a-z0-9]+/g," ").trim();
}
function offerWords(value){
  return normalizeOfferText(value).split(/\s+/).filter(word=>word.length>=2);
}
function offerAliasPhrases(ingredient){
  const text=normalizeOfferText(ingredient);
  const groups=[
    {test:/\b(?:hackfleisch|hack|rinderhack|gemischtes hack)\b/,aliases:["hackfleisch","hack","rinderhack","rinderhackfleisch","gemischtes hack","gemischtes hackfleisch","hackfleisch gemischt"]},
    {test:/\b(?:mohre|mohren|karotte|karotten)\b/,aliases:["möhre","möhren","karotte","karotten","bundmöhren","bundkarotten","suppenmöhre","suppenmöhren"]},
    {test:/\bspaghetti\b/,aliases:["spaghetti","spaghettoni"]},
    {test:/\bpenne\b/,aliases:["penne"]},
    {test:/\b(?:nudeln|pasta|teigwaren)\b/,aliases:["nudeln","pasta","teigwaren","spaghetti","penne","fusilli","farfalle","maccheroni","rigatoni"]},
    {test:/\b(?:gehackte tomaten|stuckige tomaten|tomatenstucke)\b/,aliases:["gehackte tomaten","stückige tomaten","tomatenstücke","pizzatomaten","tomaten in stücken","tomaten gehackt"]},
    {test:/\b(?:tomatenmark|tomatenpuree|tomatenkonzentrat|tomatenpaste)\b/,aliases:["tomatenmark","tomatenpüree","tomatenkonzentrat","tomatenpaste"]},
    {test:/\b(?:zwiebel|zwiebeln)\b/,aliases:["zwiebel","zwiebeln","rote zwiebeln","gemüsezwiebel"]},
  ];
  const group=groups.find(item=>item.test.test(text));
  return group?group.aliases:[String(ingredient||"").trim()];
}
function phraseMatches(product,alias){
  const productWords=offerWords(product);
  const aliasWords=offerWords(alias);
  if(!productWords.length||!aliasWords.length||aliasWords.length>productWords.length)return false;
  return productWords.some((_word,index)=>aliasWords.every((word,offset)=>productWords[index+offset]===word));
}
function findOfferMatches(ingredients,candidates){
  return candidates.map(candidate=>{
    const productName=String(candidate.productName||"");
    const productWords=offerWords(productName);
    const matched=ingredients.filter(ingredient=>{
      const aliases=offerAliasPhrases(ingredient);
      if(aliases.some(alias=>phraseMatches(productName,alias)))return true;
      if(aliases.length===1&&aliases[0]===String(ingredient||"").trim()){
        const words=offerWords(ingredient);
        return words.some(word=>productWords.includes(word));
      }
      return false;
    });
    return matched.length?{...candidate,matchedIngredients:matched}:null;
  }).filter(Boolean);
}
function normalizeOfferKey(value){
  return String(value||"").toLocaleLowerCase("de").normalize("NFD").replace(/[\u0300-\u036f]/g,"").replace(/[^a-z0-9]+/g," ").trim();
}
function deduplicateOfferMatches(matches){
  const unique=new Map();
  matches.forEach(item=>{
    const key=[item.sourceName||item.sourceId,item.productName,item.price,item.currency||"EUR",item.size||item.unit||""].map(normalizeOfferKey).join("|");
    const existing=unique.get(key);
    if(!existing){unique.set(key,{...item,matchedIngredients:[...(item.matchedIngredients||[])]});return;}
    const ingredients=new Map((existing.matchedIngredients||[]).map(value=>[normalizeOfferKey(value),value]));
    (item.matchedIngredients||[]).forEach(value=>ingredients.set(normalizeOfferKey(value),value));
    existing.matchedIngredients=[...ingredients.values()];
    if(!existing.sourceUrl&&item.sourceUrl)existing.sourceUrl=item.sourceUrl;
  });
  return [...unique.values()];
}
function canonicalFoodMerchant(value){
  const name=String(value||"").trim();
  const key=normalizeOfferKey(name);
  if(/\baldi nord\b/.test(key)||key==="aldi nord")return "ALDI Nord";
  if(/^lidl(?: |$)/.test(key))return "Lidl";
  if(/^kaufland(?: |$)/.test(key))return "Kaufland";
  if(/^rewe(?: |$)/.test(key))return "REWE";
  if(/^netto marken discount(?: |$)/.test(key))return "Netto Marken-Discount";
  if(/^netto mit (?:dem )?scottie(?: |$)/.test(key))return "Netto mit Scottie";
  return null;
}
function buildMerchantOfferSummary(matches){
  const merchants=new Map();
  matches.forEach(item=>{
    const name=canonicalFoodMerchant(item.sourceName||item.sourceId);
    if(!name)return;
    if(!merchants.has(name))merchants.set(name,{name,offers:[],ingredients:new Map()});
    const merchant=merchants.get(name);
    merchant.offers.push(item);
    (item.matchedIngredients||[]).forEach(value=>merchant.ingredients.set(normalizeOfferKey(value),value));
  });
  return [...merchants.values()].map(merchant=>{
    const ingredientGroups=[...merchant.ingredients.entries()].map(([key,name])=>{
      const offers=merchant.offers.filter(item=>(item.matchedIngredients||[]).some(value=>normalizeOfferKey(value)===key))
        .sort((a,b)=>{
          const aHas=a.price!==null&&a.price!==undefined&&String(a.price).trim()!==""&&Number.isFinite(Number(a.price))&&Number(a.price)>=0;
          const bHas=b.price!==null&&b.price!==undefined&&String(b.price).trim()!==""&&Number.isFinite(Number(b.price))&&Number(b.price)>=0;
          if(aHas!==bHas)return aHas?-1:1;
          return aHas?Number(a.price)-Number(b.price):0;
        });
      return {key,name,offers};
    }).sort((a,b)=>a.name.localeCompare(b.name,"de"));
    const cheapest=ingredientGroups.map(group=>group.offers.find(item=>item.price!==null&&item.price!==undefined&&String(item.price).trim()!==""&&Number.isFinite(Number(item.price))&&Number(item.price)>=0));
    const pricedCheapest=cheapest.filter(Boolean);
    const currencies=[...new Set(pricedCheapest.map(item=>String(item.currency||"EUR").toUpperCase()))];
    const completeSelection=pricedCheapest.length===ingredientGroups.length&&ingredientGroups.length>0&&currencies.length===1;
    const selectionTotal=completeSelection?pricedCheapest.reduce((sum,item)=>sum+Number(item.price),0):null;
    return {...merchant,ingredientCount:merchant.ingredients.size,ingredientNames:[...merchant.ingredients.values()],ingredientGroups,selectionTotal,selectionCurrency:currencies.length===1?currencies[0]:null,pricedIngredientCount:pricedCheapest.length};
  }).sort((a,b)=>b.ingredientCount-a.ingredientCount||(a.selectionTotal===null?1:b.selectionTotal===null?-1:a.selectionTotal-b.selectionTotal)||b.offers.length-a.offers.length||a.name.localeCompare(b.name,"de"));
}
function buildTwoMerchantRecommendation(merchants){
  if(!merchants.length)return null;
  const first=merchants[0];
  if(merchants.length<2)return {
    firstMarket:first,
    secondMarket:null,
    additionalGroups:[],
    ingredientCount:first.ingredientCount,
    additionalIngredientCount:0,
    selectionTotal:null,
    selectionCurrency:null,
    offerCount:first.offers.length
  };
  const covered=new Set(first.ingredientGroups.map(group=>group.key));
  const candidates=merchants.slice(1).map(merchant=>{
    const additionalGroups=merchant.ingredientGroups.filter(group=>!covered.has(group.key));
    const priced=additionalGroups.map(group=>group.offers.find(item=>item.price!==null&&item.price!==undefined&&String(item.price).trim()!==""&&Number.isFinite(Number(item.price))&&Number(item.price)>=0)).filter(Boolean);
    const currencies=[...new Set(priced.map(item=>String(item.currency||"EUR").toUpperCase()))];
    const additionalTotal=priced.length===additionalGroups.length&&additionalGroups.length>0&&currencies.length===1
      ?priced.reduce((sum,item)=>sum+Number(item.price),0):null;
    return {merchant,additionalGroups,additionalTotal,additionalCurrency:currencies.length===1?currencies[0]:null};
  }).sort((a,b)=>b.additionalGroups.length-a.additionalGroups.length||
    (a.additionalTotal===null?1:b.additionalTotal===null?-1:a.additionalTotal-b.additionalTotal)||
    b.merchant.offers.length-a.merchant.offers.length||
    a.merchant.name.localeCompare(b.merchant.name,"de"));
  const second=candidates[0];
  if(!second)return {
    firstMarket:first,
    secondMarket:null,
    additionalGroups:[],
    ingredientCount:first.ingredientCount,
    additionalIngredientCount:0,
    selectionTotal:null,
    selectionCurrency:null,
    offerCount:first.offers.length
  };
  const chosenGroups=[
    ...first.ingredientGroups.map(group=>({...group,providedBy:first.name})),
    ...second.additionalGroups.map(group=>({...group,providedBy:second.merchant.name}))
  ];
  const chosenOffers=chosenGroups.map(group=>group.offers.find(item=>item.price!==null&&item.price!==undefined&&String(item.price).trim()!==""&&Number.isFinite(Number(item.price))&&Number(item.price)>=0));
  const priced=chosenOffers.filter(Boolean);
  const currencies=[...new Set(priced.map(item=>String(item.currency||"EUR").toUpperCase()))];
  const complete=priced.length===chosenGroups.length&&chosenGroups.length>0&&currencies.length===1;
  const selectionTotal=complete?priced.reduce((sum,item)=>sum+Number(item.price),0):null;
  const selectedOfferCount=chosenGroups.reduce((sum,group)=>sum+group.offers.length,0);
  return {
    firstMarket:first,
    secondMarket:second.merchant,
    additionalGroups:second.additionalGroups,
    ingredientCount:chosenGroups.length,
    additionalIngredientCount:second.additionalGroups.length,
    selectionTotal,
    selectionCurrency:currencies.length===1?currencies[0]:null,
    offerCount:selectedOfferCount
  };
}

$("#search-meal-offers").addEventListener("click",async()=>{
  const button=$("#search-meal-offers"),message=$("#meal-offer-message"),results=$("#meal-offer-results");
  if(!currentShoppingIngredients.length){
    message.textContent="Bitte zuerst eine Einkaufsliste aus ausgewählten Gerichten erstellen.";
    return;
  }
  if(!supabaseClient){
    message.textContent="Die Verbindung zum Angebotsdienst ist nicht verfügbar. Bitte Seite neu laden.";
    return;
  }
  button.disabled=true;message.textContent="Angebote werden bei den angebundenen Märkten gesucht …";results.innerHTML="";
  try{
    const zipInput=$("#offer-search-zip")?.value.trim()||"16816";
    if(!/^\d{5}$/.test(zipInput)){message.textContent="Bitte eine gültige fünfstellige Postleitzahl eingeben.";button.disabled=false;return;}
    const searchQueries=[...new Set(currentShoppingIngredients.map(value=>String(value||"").trim()).filter(Boolean))].slice(0,8);
    const {data,error}=await supabaseClient.functions.invoke("offer-source-v2",{body:{zip:zipInput,queries:searchQueries}});
    if(error)throw error;
    const sources=Array.isArray(data?.results)?data.results:[];
    const candidates=sources.flatMap(source=>(source.candidates||[]).map(candidate=>({...candidate,sourceName:canonicalFoodMerchant(candidate.publisherName||source.name),sourceReachable:source.reachable})).filter(candidate=>candidate.sourceName));
    const rawMatches=findOfferMatches(currentShoppingIngredients,candidates);
    const matches=deduplicateOfferMatches(rawMatches);
    currentSearchMatches=matches;
    const savedKeys=new Set(savedOffers.map(offer=>offer.key||[offer.store,offer.product,offer.price,offer.currency||"EUR",offer.size||""].map(normalizeOfferKey).join("|")));
    const merchants=buildMerchantOfferSummary(matches);
    if(!matches.length){
      results.innerHTML='<p class="notice">Bei den aktuell geprüften Angebotsquellen wurde kein eindeutiger Treffer für eure Zutaten gefunden. Das bedeutet nicht, dass die Produkte nicht im Markt erhältlich sind.</p>';
    }else{
      const best=merchants[0];
      const topIngredientCount=best.ingredientCount;
      const leaders=merchants.filter(merchant=>merchant.ingredientCount===topIngredientCount);
      const summaryText=leaders.length>1
        ?'Gemeinsam größte Zutatenabdeckung: '+leaders.map(merchant=>merchant.name).join(' und ')+' decken jeweils '+topIngredientCount+' von '+currentShoppingIngredients.length+' Zutaten ab. '+best.name+' wird bei gleicher Abdeckung '+(best.selectionTotal!==null?'wegen der günstigsten berechenbaren Auswahl':'wegen der höheren Angebotszahl')+' hervorgehoben.'
        :'Hier gibt es die größte Abdeckung eurer Einkaufsliste: '+best.ingredientCount+' von '+currentShoppingIngredients.length+' Zutaten mit '+best.offers.length+' unterschiedlichen Angebotsvorschlägen.';
      const pair=buildTwoMerchantRecommendation(merchants);
      const oneMarketDetail=best.selectionTotal!==null?best.selectionTotal.toLocaleString("de-DE",{style:"currency",currency:best.selectionCurrency||"EUR"}):"nicht vollständig berechenbar";
      const pairName=pair&&pair.secondMarket?pair.firstMarket.name+" + "+pair.secondMarket.name:pair?pair.firstMarket.name+" + kein weiterer Markt gefunden":"Kein zweiter Markt verfügbar";
      const pairDetail=pair&&pair.selectionTotal!==null?pair.selectionTotal.toLocaleString("de-DE",{style:"currency",currency:pair.selectionCurrency||"EUR"}):"nicht vollständig berechenbar";
      const pairExplanation=pair&&pair.secondMarket
        ?(pair.additionalIngredientCount>0?escapeHtml(pair.firstMarket.name)+": "+pair.firstMarket.ingredientCount+" Zutaten · "+escapeHtml(pair.secondMarket.name)+" ergänzt "+pair.additionalIngredientCount+" weitere":" "+escapeHtml(pair.firstMarket.name)+" deckt "+pair.firstMarket.ingredientCount+" Zutaten ab · "+escapeHtml(pair.secondMarket.name)+" bietet keine zusätzlichen Zutaten")
        :escapeHtml(best.name)+" deckt "+best.ingredientCount+" Zutaten ab · Für einen zweiten Markt wurden keine Angebote gefunden";
      const recommendationNote="Beim Zwei-Märkte-Vergleich werden Zutaten nicht doppelt gezählt. Markt 2 wird auch dann angezeigt, wenn er keine zusätzlichen Zutaten beiträgt. Preise sind Vergleichswerte; Packungsgrößen und benötigte Mengen werden nicht berücksichtigt.";
      const summary='<section class="merchant-recommendation-wrap"><p class="merchant-kicker">EINKAUFSEMPFEHLUNG · PLZ '+escapeHtml(zipInput)+'</p><div class="merchant-recommendations-grid"><article class="merchant-recommendation merchant-recommendation-card"><span class="merchant-choice-label">Ein Markt</span><h3>'+escapeHtml(best.name)+'</h3><strong class="merchant-coverage">'+best.ingredientCount+' von '+currentShoppingIngredients.length+' Zutaten</strong><p>'+best.offers.length+' Angebote · Günstigste Auswahl: '+escapeHtml(oneMarketDetail)+'</p></article><article class="merchant-recommendation merchant-recommendation-card merchant-recommendation-pair"><span class="merchant-choice-label">Zwei Märkte</span><h3>'+escapeHtml(pairName)+'</h3><strong class="merchant-coverage">'+(pair?pair.ingredientCount:best.ingredientCount)+' von '+currentShoppingIngredients.length+' Zutaten</strong><p>'+pairExplanation+' · Günstigste Auswahl: '+escapeHtml(pairDetail)+'</p></article></div><small>'+recommendationNote+'</small></section>';
      const merchantCards=merchants.map((merchant,index)=>{
        const ingredientSections=merchant.ingredientGroups.map(group=>{
          const items=group.offers.map(item=>{
            const hasPrice=item.price!==null&&item.price!==undefined&&String(item.price).trim()!==""&&Number.isFinite(Number(item.price))&&Number(item.price)>=0;
            const priceLabel=hasPrice?Number(item.price).toLocaleString("de-DE",{style:"currency",currency:item.currency||"EUR"}):"Preis prüfen";
            const saveIndex=currentSearchMatches.indexOf(item);
            const offerKey=[item.sourceName,item.productName,item.price,item.currency||"EUR",item.size||item.unit||""].map(normalizeOfferKey).join("|");
            const alreadySaved=savedKeys.has(offerKey);
            return '<article class="offer-item offer-detail-row"><div class="offer-detail-main"><strong>'+escapeHtml(item.productName)+'</strong><span>'+(item.regionality==="not_confirmed_for_neuruppin"?"regional nicht bestätigt":"regionale Verfügbarkeit bitte prüfen")+' · <a class="offer-source-link" href="'+escapeHtml(item.sourceUrl||"#")+'" target="_blank" rel="noopener">Quelle</a></span></div><strong class="offer-price">'+priceLabel+'</strong><button type="button" class="offer-save-button'+(alreadySaved?" is-saved":"")+'" data-save-offer-index="'+saveIndex+'" '+(alreadySaved?"disabled":"")+'>'+(alreadySaved?"Vorgemerkt ✓":"Vormerken")+'</button></article>';
          }).join("");
          return '<section class="ingredient-offer-group"><h4>'+escapeHtml(group.name)+' <span>'+group.offers.length+' '+(group.offers.length===1?'Angebot':'Angebote zur Auswahl')+'</span></h4>'+items+'</section>';
        }).join("");
        const selectionLabel=merchant.selectionTotal!==null?merchant.selectionTotal.toLocaleString("de-DE",{style:"currency",currency:merchant.selectionCurrency||"EUR"}):"nicht vollständig berechenbar";
        const selectionDetail="Günstigste Auswahl: "+selectionLabel+(merchant.pricedIngredientCount<merchant.ingredientCount?" ("+merchant.pricedIngredientCount+" von "+merchant.ingredientCount+" Zutaten mit Preis)":"");
        return '<details class="merchant-group"><summary><span class="merchant-summary-main"><strong>'+escapeHtml(merchant.name)+'</strong><small>'+merchant.ingredientCount+' von '+currentShoppingIngredients.length+' Zutaten · '+merchant.offers.length+' Angebote</small><small class="merchant-selection">'+escapeHtml(selectionDetail)+'</small></span><span class="merchant-group-action">Details ansehen</span></summary><div class="merchant-offers">'+ingredientSections+'</div></details>';
      }).join("");
      results.innerHTML=summary+'<div class="merchant-results-heading"><h3>Händlervergleich</h3><span>'+matches.length+' eindeutige Angebote</span></div>'+merchantCards;
    }
    const unreachable=sources.filter(source=>!source.reachable).length;
    message.textContent=matches.length+" eindeutige Angebotsvorschläge für PLZ "+zipInput+" gefunden · "+sources.length+" Quellen geprüft"+(unreachable?" · "+unreachable+" Quellen nicht erreichbar":"")+".";
    const sourceDiagnostics=sources.map(source=>{
      const sourceCandidates=source.candidates||[];
      const count=Number(source.candidateCount??sourceCandidates.length)||0;
      const sourceMatches=findOfferMatches(currentShoppingIngredients,sourceCandidates);
      const names=sourceCandidates.map(candidate=>escapeHtml(candidate.productName||"Unbenannt"));
      const matchedNames=sourceMatches.map(candidate=>escapeHtml(candidate.productName||"Unbenannt")+" (passt zu: "+escapeHtml((candidate.matchedIngredients||[]).join(", "))+")");
      return '<details class="source-diagnostic"><summary><strong>'+escapeHtml(source.name||source.id||"Quelle")+'</strong> · '+(source.reachable?"Erreichbar":"Nicht erreichbar")+' · '+count+' Produkte · '+sourceMatches.length+' Zutaten-Treffer</summary>'+(matchedNames.length?'<p><strong>Erkannte Treffer:</strong> '+matchedNames.join(" · ")+'</p>':'<p><strong>Erkannte Treffer:</strong> keine</p>')+(names.length?'<small><strong>Alle gelieferten Produktnamen:</strong> '+names.join(" · ")+'</small>':'<small>Keine Produktkandidaten geliefert</small>')+'</details>';
    }).join("");
    results.insertAdjacentHTML("beforeend",'<details class="offer-diagnostics"><summary>Technische Quellenprüfung anzeigen</summary><p class="notice">Hier siehst du, welche Produktnamen die Angebotsquellen tatsächlich geliefert haben. Die Anzeige dient der Fehlersuche.</p>'+sourceDiagnostics+'</details>');
  }catch(error){
    console.error("Angebotssuche fehlgeschlagen:",error);
    message.textContent="Angebotssuche fehlgeschlagen: "+(error?.message||"Unbekannter Fehler");
  }finally{button.disabled=false;}
});

// Angebotsverwaltung: gefundene Angebote mit einem Klick vormerken.
const OFFER_STORAGE_KEY="familien-essensplaner-offers-v1";
function readOffers(){
  try{return JSON.parse(localStorage.getItem(OFFER_STORAGE_KEY)||"[]");}
  catch(error){return [];}
}
let savedOffers=readOffers();
let currentSearchMatches=[];
function formatOfferPrice(item){
  const price=Number(item.price);
  if(!Number.isFinite(price))return "Preis prüfen";
  const currency=String(item.currency||"EUR").toUpperCase();
  try{return price.toLocaleString("de-DE",{style:"currency",currency});}
  catch(error){return price.toLocaleString("de-DE",{minimumFractionDigits:2,maximumFractionDigits:2})+" "+currency;}
}
function renderOffers(){
  const list=$("#offer-list");
  if(!list)return;
  $("#offer-count").textContent=savedOffers.length+" "+(savedOffers.length===1?"Angebot":"Angebote");
  if(!savedOffers.length){
    list.innerHTML='<p class="notice">Noch keine Angebote vorgemerkt. Suche oben nach passenden Angeboten und tippe bei einem Treffer auf „Vormerken“.</p>';
    return;
  }
  list.innerHTML=savedOffers.slice().sort((a,b)=>(a.store||"").localeCompare(b.store||"","de")||(a.product||"").localeCompare(b.product||"","de")).map(item=>
    '<article class="offer-item"><div><strong>'+escapeHtml(item.product)+'</strong><span>'+escapeHtml(item.store||"Markt nicht angegeben")+(item.size?" · "+escapeHtml(item.size):"")+(item.until?" · gültig bis "+escapeHtml(new Date(item.until+"T12:00:00").toLocaleDateString("de-DE")):"")+(item.matchedIngredients?.length?" · passt zu: "+escapeHtml(item.matchedIngredients.join(", ")):"")+'</span>'+(item.sourceUrl?'<a class="offer-source-link" href="'+escapeHtml(item.sourceUrl)+'" target="_blank" rel="noopener">Angebotsquelle öffnen ↗</a>':"")+'</div><strong class="offer-price">'+formatOfferPrice(item)+'</strong><button type="button" class="offer-delete" data-offer-id="'+item.id+'" aria-label="Angebot entfernen">×</button></article>'
  ).join("");
}
function saveFoundOffer(item){
  const key=[item.sourceName,item.productName,item.price,item.currency||"EUR",item.size||item.unit||""].map(normalizeOfferKey).join("|");
  if(savedOffers.some(offer=>offer.key===key))return false;
  savedOffers.push({id:String(Date.now())+"-"+Math.random().toString(36).slice(2,7),key,store:item.sourceName||"Markt nicht angegeben",product:item.productName||"Unbekanntes Produkt",price:item.price,currency:item.currency||"EUR",size:item.size||item.unit||"",until:item.validUntil||item.validityEnd||item.until||"",sourceUrl:item.sourceUrl||"",matchedIngredients:item.matchedIngredients||[],regionality:item.regionality||""});
  try{localStorage.setItem(OFFER_STORAGE_KEY,JSON.stringify(savedOffers));}
  catch(error){savedOffers.pop();return false;}
  renderOffers();
  return true;
}
$("#show-offers").addEventListener("click",()=>{
  setQuickNavActive("offers");
  $("#offers-section").hidden=false;
  renderOffers();
  $("#offers-section").scrollIntoView({behavior:"smooth",block:"start"});
});
$("#offer-list").addEventListener("click",event=>{
  const button=event.target.closest("[data-offer-id]");
  if(!button)return;
  savedOffers=savedOffers.filter(item=>item.id!==button.dataset.offerId);
  localStorage.setItem(OFFER_STORAGE_KEY,JSON.stringify(savedOffers));
  renderOffers();
});
$("#meal-offer-results").addEventListener("click",event=>{
  const button=event.target.closest("[data-save-offer-index]");
  if(!button)return;
  const item=currentSearchMatches[Number(button.dataset.saveOfferIndex)];
  if(!item)return;
  const added=saveFoundOffer(item);
  button.textContent=added?"Vorgemerkt ✓":"Bereits vorgemerkt ✓";
  button.disabled=true;
  button.classList.add("is-saved");
});
renderOffers();
$("#open-login").addEventListener("click",()=>{authMode="login";authPanel.hidden=false;$("#auth-dialog-title").textContent="Anmelden";$("#auth-dialog-copy").textContent="Melde dich an, um euren gemeinsamen Essensplaner zu nutzen.";});
$("#open-signup").addEventListener("click",()=>{authMode="signup";authPanel.hidden=false;$("#auth-dialog-title").textContent="Konto erstellen";$("#auth-dialog-copy").textContent=pendingFamilyInvite?"Erstelle dein Konto, um der eingeladenen Familie beizutreten.":"Erstelle dein Konto und starte euren gemeinsamen Essensplaner.";});
$("#show-family").addEventListener("click",async()=>{
  if(!currentFamilyId){authMode="login";authPanel.hidden=false;$("#auth-dialog-title").textContent=pendingFamilyInvite?"Du wurdest eingeladen":"Familienkonto";$("#auth-dialog-copy").textContent=pendingFamilyInvite?"Melde dich an oder erstelle ein Konto, um der Familie beizutreten.":"Bitte melde dich an, um eure Familiengruppe zu öffnen.";return;}
  setQuickNavActive("family");
  $("#family-section").hidden=false;await loadFamilyInfo();$("#family-section").scrollIntoView({behavior:"smooth",block:"start"});
});
$("#create-family-invite").addEventListener("click",async()=>{
  const button=$("#create-family-invite");button.disabled=true;showFamilyMessage("Einladungslink wird erstellt …");
  const {data,error}=await supabaseClient.rpc("create_family_invitation");
  button.disabled=false;
  if(error){showFamilyMessage("Einladung konnte nicht erstellt werden: "+error.message);return;}
  const row=Array.isArray(data)?data[0]:data;
  if(!row?.invitation_token){showFamilyMessage("Es wurde kein Einladungslink zurückgegeben.");return;}
  const link=new URL(window.location.href);link.searchParams.set("familyInvite",row.invitation_token);
  $("#family-invite-link").value=link.toString();$("#family-invite-link-wrap").hidden=false;
  showFamilyMessage("Einladungslink erstellt. Er ist sieben Tage gültig und kann einmal verwendet werden.");
});
$("#copy-family-invite").addEventListener("click",async()=>{
  const field=$("#family-invite-link");
  try{await navigator.clipboard.writeText(field.value);showFamilyMessage("Einladungslink wurde kopiert.");}
  catch(error){field.focus();field.select();showFamilyMessage("Bitte den markierten Einladungslink kopieren.");}
});
authForm.addEventListener("submit",event=>{event.preventDefault();if(authMode==="signup")$("#signup-button").click();else $("#login-button").click();});
$("#close-auth").addEventListener("click",()=>{authPanel.hidden=true;});
authPanel.addEventListener("click",event=>{if(event.target===authPanel)authPanel.hidden=true;});
if(window.supabase&&cfg?.supabaseUrl&&cfg?.supabaseKey){
  supabaseClient=window.supabase.createClient(cfg.supabaseUrl,cfg.supabaseKey);
  supabaseClient.auth.getSession().then(async({data,error})=>{if(error)showMessage(error.message);setSession(data?.session);if(data?.session?.user)await loadOrCreateFamily(data.session.user);else if(pendingFamilyInvite){authMode="login";authPanel.hidden=false;$("#auth-dialog-title").textContent="Du wurdest eingeladen";$("#auth-dialog-copy").textContent="Melde dich an oder erstelle ein Konto, um der Familie beizutreten.";showMessage("Familieneinladung erkannt. Bitte anmelden oder ein Konto erstellen.");}});
  supabaseClient.auth.onAuthStateChange(async(event,session)=>{setSession(session);if(session?.user&&event!=="INITIAL_SESSION")await loadOrCreateFamily(session.user);});
  $("#signup-button").addEventListener("click",async event=>{
    event.preventDefault();const email=$("#auth-email").value.trim(),password=$("#auth-password").value;
    if(!email||password.length<6){showMessage("Bitte E-Mail und ein Passwort mit mindestens 6 Zeichen eingeben.");return;}
    const {data,error}=await supabaseClient.auth.signUp({email,password,options:{emailRedirectTo:window.location.origin+window.location.pathname+(pendingFamilyInvite?"?familyInvite="+encodeURIComponent(pendingFamilyInvite):"")}});
    showMessage(error?error.message:(data.session?"Konto erstellt und angemeldet.":"Konto erstellt. Bitte bestätige deine E-Mail-Adresse über den zugesandten Link."));
  });
  $("#login-button").addEventListener("click",async()=>{const email=$("#auth-email").value.trim(),password=$("#auth-password").value;const {error}=await supabaseClient.auth.signInWithPassword({email,password});showMessage(error?error.message:"Anmeldung erfolgreich.");});
  $("#logout-button").addEventListener("click",async()=>{const {error}=await supabaseClient.auth.signOut();showMessage(error?error.message:"Du wurdest abgemeldet.");});
}else{statusEl.textContent="Verbindung nicht verfügbar";showMessage("Die Supabase-Bibliothek konnte nicht geladen werden. Bitte Seite neu laden.");}
$("#dish-search").addEventListener("input",()=>renderDishes(visibleDishes));
$("#dish-quick-categories").addEventListener("click",event=>{const button=event.target.closest("[data-quick-category]");if(!button)return;dishQuickCategory=button.dataset.quickCategory;renderDishes(visibleDishes);});
$("#dish-carousel-prev").addEventListener("click",()=>{dishGrid.scrollBy({left:-dishGrid.clientWidth,behavior:"smooth"});});
$("#dish-carousel-next").addEventListener("click",()=>{dishGrid.scrollBy({left:dishGrid.clientWidth,behavior:"smooth"});});
dishGrid.addEventListener("scroll",()=>{const max=dishGrid.scrollWidth-dishGrid.clientWidth;$("#dish-carousel-prev").disabled=dishGrid.scrollLeft<=4;$("#dish-carousel-next").disabled=dishGrid.scrollLeft>=max-4;},{passive:true});
$("#dish-category-filter").addEventListener("change",()=>renderDishes(visibleDishes));
$("#dish-time-filter").addEventListener("change",()=>renderDishes(visibleDishes));
$("#dish-view-filter").addEventListener("change",()=>renderDishes(visibleDishes));
$("#quick-nav-toggle").addEventListener("click",()=>$("#quick-nav").classList.toggle("collapsed"));
$("#quick-nav-links").addEventListener("click",event=>{
  const button=event.target.closest("[data-nav-action]");if(!button)return;
  setQuickNavActive(button.dataset.navAction);
  const action=button.dataset.navAction;
  if(action==="home"){setQuickNavActive("home");$("#home-section").scrollIntoView({behavior:"smooth",block:"start"});}
  if(action==="week")$("#show-week-plan").click();
  if(action==="shopping")$("#create-shopping-list").click();
  if(action==="offers")$("#show-offers").click();
  if(action==="dishes")$("#show-dishes").click();
});
if("serviceWorker"in navigator&&location.protocol.startsWith("http"))window.addEventListener("load",()=>navigator.serviceWorker.register("./sw.js").catch(error=>console.warn("Offline-Funktion konnte nicht aktiviert werden:",error)));

// Begrüßungsbild: wechselt automatisch zu jeder vollen Stunde.
// Die Auswahl richtet sich nach der lokalen Stunde und bleibt dadurch für alle
// Besucher während derselben Stunde stabil.
const welcomePhotos=[
  {src:"https://images.unsplash.com/photo-1473093295043-cdd812d0e601?auto=format&fit=crop&w=1100&q=85",alt:"Frisch zubereitete Pasta mit Tomaten und Kräutern"},
  {src:"https://images.unsplash.com/photo-1547592180-85f173990554?auto=format&fit=crop&w=1100&q=85",alt:"Bunte Schüssel mit frischen Zutaten"},
  {src:"https://images.unsplash.com/photo-1498837167922-ddd27525d352?auto=format&fit=crop&w=1100&q=85",alt:"Frische Zutaten und Gemüse für die Familienküche"},
  {src:"https://images.unsplash.com/photo-1540189549336-e6e99c3679fe?auto=format&fit=crop&w=1100&q=85",alt:"Frischer Salat mit buntem Gemüse"},
  {src:"https://images.unsplash.com/photo-1512621776951-a57141f2eefd?auto=format&fit=crop&w=1100&q=85",alt:"Gesunde Gemüse-Bowl mit frischen Zutaten"}
];
const welcomePhoto=document.querySelector(".welcome-photo");
if(welcomePhoto){
  let welcomePhotoTimer;
  const updateWelcomePhoto=()=>{
    const hour=Math.floor(Date.now()/3600000);
    const photo=welcomePhotos[((hour%welcomePhotos.length)+welcomePhotos.length)%welcomePhotos.length];
    if(welcomePhoto.dataset.photoHour!==String(hour)){
      welcomePhoto.src=photo.src;
      welcomePhoto.alt=photo.alt;
      welcomePhoto.dataset.photoHour=String(hour);
    }
    clearTimeout(welcomePhotoTimer);
    const untilNextHour=3600000-(Date.now()%3600000)+100;
    welcomePhotoTimer=setTimeout(updateWelcomePhoto,untilNextHour);
  };
  updateWelcomePhoto();
  document.addEventListener("visibilitychange",()=>{if(!document.hidden)updateWelcomePhoto();});
  window.addEventListener("focus",updateWelcomePhoto);
}
