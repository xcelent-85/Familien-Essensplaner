const starterDishes = [
  {title:"Spaghetti Bolognese",category:"Italienisch",prep_minutes:10,cook_minutes:20,servings:3,ingredients:["300 g Spaghetti","300 g Hackfleisch","1 Zwiebel","1 Möhre","1 Dose gehackte Tomaten","2 EL Tomatenmark"]},
  {title:"Hähnchen-Gemüse-Pfanne",category:"Pfanne",prep_minutes:10,cook_minutes:10,servings:3,ingredients:["400 g Hähnchenbrust","1 Paprika","1 Zucchini","1 Zwiebel","2 EL Öl","200 g Reis"]},
  {title:"Kartoffelgratin mit Salat",category:"Vegetarisch",prep_minutes:15,cook_minutes:30,servings:3,ingredients:["800 g Kartoffeln","200 ml Sahne","150 g geriebener Käse","1 Kopf grüner Salat","2 EL Essig","2 EL Öl"]},
  {title:"Wraps mit Hähnchen",category:"Schnell",prep_minutes:10,cook_minutes:10,servings:3,ingredients:["3 Weizentortillas","300 g Hähnchenbrust","1 Paprika","1 kleine Dose Mais","100 g Joghurt","1 Salatgurke"]},
  {title:"Nudel-Schinken-Auflauf",category:"Ofengericht",prep_minutes:10,cook_minutes:25,servings:3,ingredients:["300 g Nudeln","150 g Kochschinken","200 ml Sahne","150 g geriebener Käse","1 Ei"]},
  {title:"Curry mit Reis",category:"Vegetarisch",prep_minutes:10,cook_minutes:15,servings:3,ingredients:["200 g Reis","1 Dose Kichererbsen","1 Dose Kokosmilch","300 g Gemüse","2 EL Currypaste"]},
  {title:"Frikadellen mit Kartoffeln",category:"Klassiker",prep_minutes:15,cook_minutes:20,servings:3,ingredients:["400 g Hackfleisch","1 Ei","1 Zwiebel","3 EL Paniermehl","700 g Kartoffeln","1 EL Öl"]},
  {title:"Ofengemüse mit Feta",category:"Vegetarisch",prep_minutes:10,cook_minutes:20,servings:3,ingredients:["2 Paprika","1 Zucchini","500 g Kartoffeln","200 g Feta","2 EL Öl"]},
  {title:"Tomatensuppe mit Brot",category:"Schnell",prep_minutes:5,cook_minutes:15,servings:3,ingredients:["2 Dosen gehackte Tomaten","1 Zwiebel","500 ml Gemüsebrühe","100 ml Sahne","1 Baguette"]},
  {title:"Lachs mit Ofenkartoffeln",category:"Fisch",prep_minutes:10,cook_minutes:20,servings:3,ingredients:["3 Lachsfilets","700 g Kartoffeln","1 Zitrone","2 EL Öl","150 g Joghurt"]},
  {title:"Penne in Tomatensoße",category:"Italienisch",prep_minutes:5,cook_minutes:15,servings:3,ingredients:["300 g Penne","1 Dose gehackte Tomaten","1 Zwiebel","2 EL Tomatenmark","50 g Parmesan"]},
  {title:"Bauernomelett",category:"Schnell",prep_minutes:5,cook_minutes:10,servings:3,ingredients:["6 Eier","400 g Kartoffeln","1 Paprika","1 Zwiebel","100 ml Milch"]}
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
  const wasEditing=Boolean(editingDishId);dishForm.hidden=true;resetDishForm();showMessage(wasEditing?"Gericht aktualisiert.":"Gericht hinzugefügt.");await loadDishes();
});
function setSession(session){
  currentUser=session?.user||null;
  if(currentUser){authForm.hidden=true;signedIn.hidden=false;$("#user-label").textContent="Angemeldet als "+currentUser.email;statusEl.innerHTML="<i></i> Konto verbunden";}
  else{authForm.hidden=false;signedIn.hidden=true;statusEl.innerHTML="<i></i> Nicht angemeldet";currentFamilyId=null;$("#add-dish-button").hidden=true;if(typeof renderWeekPlan==="function"){currentWeekMeals=[];renderWeekPlan();}}
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

let weekOffset=0;
let currentWeekMeals=[];
const weekDays=["Montag","Dienstag","Mittwoch","Donnerstag","Freitag"];
function getWeekDates(){
  const monday=new Date();monday.setHours(12,0,0,0);
  monday.setDate(monday.getDate()-((monday.getDay()+6)%7)+(weekOffset*7));
  return weekDays.map((name,index)=>{const date=new Date(monday);date.setDate(monday.getDate()+index);return {name,date,iso:date.getFullYear()+"-"+String(date.getMonth()+1).padStart(2,"0")+"-"+String(date.getDate()).padStart(2,"0")};});
}
function renderWeekPlan(){
  const dates=getWeekDates(),first=dates[0].date,last=dates[4].date;
  const format=date=>date.toLocaleDateString("de-DE",{day:"2-digit",month:"2-digit",year:"numeric"});
  $("#week-label").textContent=format(first)+" – "+format(last);
  const dishes=visibleDishes.length?visibleDishes:starterDishes;
  $("#week-grid").innerHTML=dates.map(day=>{
    const meal=currentWeekMeals.find(item=>item.planned_for===day.iso);
    const options='<option value="">Noch kein Gericht ausgewählt</option>'+dishes.map(dish=>'<option value="'+escapeHtml(dish.id||dish.title)+'" '+((meal&&(meal.dish_id===dish.id||meal.preview_title===dish.title))?'selected':'')+'>'+escapeHtml(dish.title)+'</option>').join("");
    return '<div class="week-day"><div class="week-day-heading"><strong>'+day.name+'</strong><span>'+format(day.date)+'</span></div><label>Abendessen<select class="week-dish-select" data-date="'+day.iso+'">'+options+'</select></label><label>Portionen<input class="week-servings" data-date="'+day.iso+'" type="number" min="1" max="30" value="'+(meal?.servings||3)+'"></label></div>';
  }).join("");
  $("#week-help").textContent=currentFamilyId?"Wählt für jeden Tag ein Gericht. Änderungen werden erst nach Klick auf „Wochenplan speichern“ übernommen.":"Vorschau: Zum dauerhaften Speichern bitte anmelden.";
  $("#save-week-plan").disabled=!currentFamilyId;
}
async function loadWeekPlan(){
  if(!currentFamilyId){currentWeekMeals=[];renderWeekPlan();return;}
  const dates=getWeekDates();
  const {data,error}=await supabaseClient.from("weekly_meals").select("id,dish_id,planned_for,servings").eq("family_id",currentFamilyId).eq("meal_slot","dinner").gte("planned_for",dates[0].iso).lte("planned_for",dates[4].iso);
  if(error){$("#week-message").textContent="Wochenplan konnte nicht geladen werden: "+error.message;return;}
  currentWeekMeals=data||[];renderWeekPlan();
}
$("#show-week-plan").addEventListener("click",async()=>{
  $("#weekly-section").hidden=false;
  if(currentFamilyId)await loadWeekPlan();else{currentWeekMeals=[];renderWeekPlan();}
  $("#weekly-section").scrollIntoView({behavior:"smooth",block:"start"});
});
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
  const {error:deleteError}=await supabaseClient.from("weekly_meals").delete().eq("family_id",currentFamilyId).eq("meal_slot","dinner").gte("planned_for",dates[0].iso).lte("planned_for",dates[4].iso);
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
  }).filter(Boolean);
  const totals=new Map(),missing=[];
  selected.forEach(({day,dish,servings})=>{
    const base=Number(dish.servings)||3;
    if(!Array.isArray(dish.ingredients)||!dish.ingredients.length){missing.push(dish.title);return;}
    dish.ingredients.forEach(line=>{
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
    const quantity=item.amount===null?"":(Number(item.amount.toFixed(2)).toLocaleString("de-DE")+(item.unit?" "+item.unit+" ":" "));
    return '<label class="shopping-item"><input type="checkbox" data-shopping-item="'+index+'"><span><strong>'+escapeHtml(quantity+item.name)+'</strong><small>'+escapeHtml(item.days.join(", "))+'</small></span></label>';
  }).join(""):'<p class="notice">Wähle im Wochenplan zuerst mindestens ein Gericht aus.</p>';
  $("#shopping-list-note").textContent=selected.length+" Gerichte berücksichtigt · "+list.length+" Zutatenpositionen"+(missing.length?" · Für "+missing.join(", ")+" fehlen noch Zutatenangaben.":"");
  $("#shopping-section").hidden=false;
  $("#shopping-section").scrollIntoView({behavior:"smooth",block:"start"});
}
$("#create-shopping-list").addEventListener("click",renderShoppingList);

let currentShoppingIngredients=[];
function normalizeOfferWords(value){
  const stopWords=new Set(["frisch","gehackte","gehackt","klein","kleine","gross","große","mittel","zum","für","und","oder","dose","dosen","packung","packungen","stück","stk"]);
  return String(value||"").toLocaleLowerCase("de-DE").normalize("NFD").replace(/[\u0300-\u036f]/g,"")
    .replace(/ß/g,"ss").replace(/[^a-z0-9]+/g," ").trim().split(/\s+/)
    .filter(word=>word.length>=3&&!stopWords.has(word))
    .map(word=>word.length>5?word.replace(/(ern|en|er|es|e|n|s)$/,""):word);
}
function offerAliasPhrases(ingredient){
  const words=normalizeOfferWords(ingredient);
  const text=words.join(" ");
  const groups=[
    {test:/\b(?:hackfleisch|hack|rinderhack|gemischtes hack)\b/,aliases:["hackfleisch","hack","rinderhack","gemischtes hack","gemischtes hackfleisch"]},
    {test:/\b(?:mohre|mohren|karotte|karotten)\b/,aliases:["möhre","möhren","karotte","karotten"]},
    {test:/\b(?:spaghetti|nudeln|penne|pasta)\b/,aliases:["spaghetti","spaghettoni","nudeln","pasta","penne"]},
    {test:/\b(?:gehackte tomaten|tomaten)\b/,aliases:["gehackte tomaten","stückige tomaten","tomatenstücke","pizzatomaten","tomaten in stücken","tomaten"]},
    {test:/\b(?:tomatenmark|tomatenpuree|tomatenkonzentrat)\b/,aliases:["tomatenmark","tomatenpüree","tomatenkonzentrat","tomatenpaste"]},
    {test:/\b(?:zwiebel|zwiebeln)\b/,aliases:["zwiebel","zwiebeln","rote zwiebeln","gemüsezwiebel"]},
  ];
  const group=groups.find(item=>item.test.test(text));
  return group?group.aliases:[String(ingredient||"").trim()];
}
function phraseMatches(product,alias){
  const productWords=normalizeOfferWords(product);
  const aliasWords=normalizeOfferWords(alias);
  if(!productWords.length||!aliasWords.length||aliasWords.length>productWords.length)return false;
  return productWords.some((_word,index)=>aliasWords.every((word,offset)=>productWords[index+offset]===word));
}
function findOfferMatches(ingredients,candidates){
  return candidates.map(candidate=>{
    const productName=String(candidate.productName||"");
    const matched=ingredients.filter(ingredient=>{
      const aliases=offerAliasPhrases(ingredient);
      if(aliases.some(alias=>phraseMatches(productName,alias)))return true;
      // Für Zutaten ohne hinterlegte Synonyme bleibt ein vorsichtiger Wortvergleich.
      if(aliases.length===1&&aliases[0]===String(ingredient||"").trim()){
        const words=normalizeOfferWords(ingredient);
        const productWords=normalizeOfferWords(productName);
        return words.some(word=>productWords.some(productWord=>productWord===word));
      }
      return false;
    });
    return matched.length?{...candidate,matchedIngredients:matched}:null;
  }).filter(Boolean);
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
    const {data,error}=await supabaseClient.functions.invoke("offer-source-v2",{method:"GET"});
    if(error)throw error;
    const sources=Array.isArray(data?.results)?data.results:[];
    const candidates=sources.flatMap(source=>(source.candidates||[]).map(candidate=>({...candidate,sourceName:source.name,sourceReachable:source.reachable})));
    const matches=findOfferMatches(currentShoppingIngredients,candidates);
    if(!matches.length){
      results.innerHTML='<p class="notice">Bei den aktuell geprüften Angebotsquellen wurde kein eindeutiger Treffer für eure Zutaten gefunden. Das bedeutet nicht, dass die Produkte nicht im Markt erhältlich sind.</p>';
    }else{
      results.innerHTML=matches.sort((a,b)=>(Number(a.price)||0)-(Number(b.price)||0)).map(item=>
        '<article class="offer-item"><div><strong>'+escapeHtml(item.productName)+'</strong><span>'+escapeHtml(item.sourceName||item.sourceId||"Angebotsquelle")+' · passend zu: '+escapeHtml(item.matchedIngredients.join(", "))+(item.regionality==="not_confirmed_for_neuruppin"?" · regional nicht bestätigt":" · Vorschlag, bitte Prospekt prüfen")+'</span><a href="'+escapeHtml(item.sourceUrl||"#")+'" target="_blank" rel="noopener">Quelle öffnen ↗</a></div><strong class="offer-price">'+Number(item.price).toLocaleString("de-DE",{style:"currency",currency:item.currency||"EUR"})+'</strong></article>'
      ).join("");
    }
    const unreachable=sources.filter(source=>!source.reachable).length;
    message.textContent=matches.length+" passende Angebotsvorschläge gefunden · "+sources.length+" Quellen geprüft"+(unreachable?" · "+unreachable+" Quellen nicht erreichbar":"")+".";
  }catch(error){
    console.error("Angebotssuche fehlgeschlagen:",error);
    message.textContent="Angebotssuche fehlgeschlagen: "+(error?.message||"Unbekannter Fehler");
  }finally{button.disabled=false;}
});

// Angebotsverwaltung: lokale Vormerkung als erster Schritt zur Angebotsintegration.
const OFFER_STORAGE_KEY="familien-essensplaner-offers-v1";
function readOffers(){
  try{return JSON.parse(localStorage.getItem(OFFER_STORAGE_KEY)||"[]");}
  catch(error){return [];}
}
let savedOffers=readOffers();
function renderOffers(){
  const list=$("#offer-list");
  if(!list)return;
  $("#offer-count").textContent=savedOffers.length+" Angebote";
  if(!savedOffers.length){
    list.innerHTML='<p class="notice">Noch keine Angebote eingetragen. Öffne oben einen Prospekt und füge passende Lebensmittel hinzu.</p>';
    return;
  }
  list.innerHTML=savedOffers.slice().sort((a,b)=>a.store.localeCompare(b.store,"de")||a.product.localeCompare(b.product,"de")).map(item=>
    '<article class="offer-item"><div><strong>'+escapeHtml(item.product)+'</strong><span>'+escapeHtml(item.store)+(item.size?" · "+escapeHtml(item.size):"")+(item.until?" · gültig bis "+escapeHtml(new Date(item.until+"T12:00:00").toLocaleDateString("de-DE")):"")+'</span></div><strong class="offer-price">'+item.price.toLocaleString("de-DE",{style:"currency",currency:"EUR"})+'</strong><button type="button" class="offer-delete" data-offer-id="'+item.id+'" aria-label="Angebot löschen">×</button></article>'
  ).join("");
}
$("#show-offers").addEventListener("click",()=>{
  $("#offers-section").hidden=false;
  renderOffers();
  $("#offers-section").scrollIntoView({behavior:"smooth",block:"start"});
});
$("#offer-form").addEventListener("submit",event=>{
  event.preventDefault();
  const product=$("#offer-product").value.trim();
  const price=Number($("#offer-price").value.replace(",","."));
  if(!product||!Number.isFinite(price)||price<=0){$("#offer-message").textContent="Bitte Produkt und einen gültigen Preis eintragen.";return;}
  savedOffers.push({id:String(Date.now())+"-"+Math.random().toString(36).slice(2,7),store:$("#offer-store").value,product,price,size:$("#offer-size").value.trim(),until:$("#offer-until").value});
  try{localStorage.setItem(OFFER_STORAGE_KEY,JSON.stringify(savedOffers));}
  catch(error){$("#offer-message").textContent="Speichern im Browser ist nicht möglich. Bitte Speicherplatz oder Browsereinstellungen prüfen.";return;}
  $("#offer-form").reset();
  $("#offer-message").textContent="Angebot wurde auf diesem Gerät gespeichert.";
  renderOffers();
});
$("#offer-list").addEventListener("click",event=>{
  const button=event.target.closest("[data-offer-id]");
  if(!button)return;
  savedOffers=savedOffers.filter(item=>item.id!==button.dataset.offerId);
  localStorage.setItem(OFFER_STORAGE_KEY,JSON.stringify(savedOffers));
  renderOffers();
});
renderOffers();

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
