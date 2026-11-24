const CACHE_NAME="familien-essensplaner-v93";
const APP_FILES=["./","./index.html","./styles.css?v=7","./app.js?v=55","./manifest.webmanifest","./assets/icon.svg","./assets/spaghetti-bolognese.jpg"];
self.addEventListener("install",event=>{event.waitUntil(caches.open(CACHE_NAME).then(cache=>cache.addAll(APP_FILES)));self.skipWaiting();});
self.addEventListener("activate",event=>{event.waitUntil(caches.keys().then(keys=>Promise.all(keys.filter(key=>key!==CACHE_NAME).map(key=>caches.delete(key)))));self.clients.claim();});
self.addEventListener("fetch",event=>{if(event.request.method!=="GET"||new URL(event.request.url).origin!==location.origin)return;event.respondWith(caches.match(event.request).then(cached=>cached||fetch(event.request).then(response=>{const copy=response.clone();caches.open(CACHE_NAME).then(cache=>cache.put(event.request,copy));return response;})));});
// Alpha 0.2 Startseite mit Fotokacheln – Cache-Stand 2026-11-24.41
