const APP_BUILD_ID="2026-11-22.13";
const buildVersionElement=document.querySelector("#app-build-version");
if(buildVersionElement)buildVersionElement.textContent="Version "+APP_BUILD_ID+" · geladen "+new Date().toLocaleString("de-DE");
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
  });
  const totals=new Map(),missing=[];
  const formatQuantity=item=>item.amount===null?"":(Number(item.amount.toFixed(2)).toLocaleString("de-DE")+(item.unit?" "+item.unit+" ":" "));
  const dailyCards=selected.map((entry,index)=>{
    if(!entry)return '<article class="shopping-day-card shopping-day-empty"><div class="shopping-day-heading"><strong>'+escapeHtml(dates[index].name)+'</strong><span>'+escapeHtml(dates[index].date.toLocaleDateString("de-DE",{day:"2-digit",month:"2-digit"}))+'</span></div><p>Kein Gericht geplant</p></article>';
    const {day,dish,servings}=entry;
    const base=Number(dish.servings)||3;
    const ingredients=Array.isArray(dish.ingredients)?dish.ingredients:[];
    if(!ingredients.length)missing.push(dish.title);
    const dailyItems=ingredients.map((line,index)=>{
      const item=parseShoppingIngredient(line,servings/base);
      const existing=totals.get(item.key);
      if(existing&&item.amount!==null&&existing.amount!==null)existing.amount+=item.amount;
      else if(!existing)totals.set(item.key,{...item,days:[day.name]});
      else if(!existing.days.includes(day.name))existing.days.push(day.name);
      return '<label class="shopping-item"><input type="checkbox" data-shopping-day="'+day.iso+'" data-shopping-ingredient="'+index+'"><span><strong>'+escapeHtml(formatQuantity(item)+item.name)+'</strong></span></label>';
    }).join("");
    return '<article class="shopping-day-card"><div class="shopping-day-heading"><strong>'+escapeHtml(day.name)+'</strong><span>'+escapeHtml(day.date.toLocaleDateString("de-DE",{day:"2-digit",month:"2-digit"}))+'</span></div><h3>'+escapeHtml(dish.title)+'</h3><div class="shopping-day-items">'+(dailyItems||'<p class="shopping-day-missing">Keine Zutaten hinterlegt</p>')+'</div></article>';
  }).join("");
  const list=[...totals.values()].sort((a,b)=>a.name.localeCompare(b.name,"de"));
  currentShoppingIngredients=list.map(item=>item.name);
  const container=$("#shopping-list-items");
  container.innerHTML=list.length?list.map((item,index)=>{
    return '<label class="shopping-item"><input type="checkbox" data-shopping-item="'+index+'"><span><strong>'+escapeHtml(formatQuantity(item)+item.name)+'</strong><small>'+escapeHtml(item.days.join(", "))+'</small></span></label>';
  }).join(""):'<p class="notice">Wähle im Wochenplan zuerst mindestens ein Gericht aus.</p>';
  $("#shopping-day-columns").innerHTML=dailyCards;
  $("#shopping-list-note").textContent=selected.filter(Boolean).length+" Gerichte berücksichtigt · "+list.length+" zusammengefasste Zutatenpositionen"+(missing.length?" · Für "+[...new Set(missing)].join(", ")+" fehlen noch Zutatenangaben.":"");
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
      const bestSelectionLabel=best.selectionTotal!==null?best.selectionTotal.toLocaleString("de-DE",{style:"currency",currency:best.selectionCurrency||"EUR"}):"nicht vollständig berechenbar";
      const summary='<section class="merchant-recommendation"><p class="merchant-kicker">EINKAUFSEMPFEHLUNG · PLZ '+escapeHtml(zipInput)+'</p><h3>'+escapeHtml(best.name)+'</h3><p>'+summaryText+'</p><small>Die günstigste Auswahl nimmt je Zutat nur das preiswerteste gefundene Angebot. Der Betrag ist ein Vergleichswert, kein garantierter Warenkorbpreis; Packungsgrößen und benötigte Mengen sind nicht berücksichtigt.</small></section>';
      const merchantCards=merchants.map((merchant,index)=>{
        const ingredientSections=merchant.ingredientGroups.map(group=>{
          const items=group.offers.map(item=>{
            const hasPrice=item.price!==null&&item.price!==undefined&&String(item.price).trim()!==""&&Number.isFinite(Number(item.price))&&Number(item.price)>=0;
            const priceLabel=hasPrice?Number(item.price).toLocaleString("de-DE",{style:"currency",currency:item.currency||"EUR"}):"Preis prüfen";
            return '<article class="offer-item"><div><strong>'+escapeHtml(item.productName)+'</strong><span>'+(item.regionality==="not_confirmed_for_neuruppin"?"regional nicht bestätigt":"regionale Verfügbarkeit bitte prüfen")+'</span><a href="'+escapeHtml(item.sourceUrl||"#")+'" target="_blank" rel="noopener">Quelle öffnen ↗</a></div><strong class="offer-price">'+priceLabel+'</strong></article>';
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
