'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "version.json": "cf3e60e6571feb707d1849ff180188a7",
"index.html": "a1dfd56a92884771673eb992988ba7fe",
"/": "a1dfd56a92884771673eb992988ba7fe",
"main.dart.js": "ea88ff9f9cb4fe62f56225295246cbb9",
"flutter.js": "a85fcf6324d3c4d3ae3be1ae4931e9c5",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"manifest.json": "63b663969e755bbcab6be327b383a8cf",
"assets/AssetManifest.json": "fa8d2a601d1d07ba600db711710f5595",
"assets/NOTICES": "5be7211f1ae31456413114ff4e679033",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/image8.png": "f837105b2bb849dee46392b5936a4d23",
"assets/assets/Hero.png": "902641725ccd031eb07e8a528b4f2a44",
"assets/assets/image9.png": "12726389bd2f2a296fe6b8b96d653f79",
"assets/assets/11/11-07.jpeg": "c245e397ca6805da75e220c48a15917f",
"assets/assets/11/11-06.jpeg": "1faee53712e82c04f51aa98898fe2ede",
"assets/assets/11/11-01.jpeg": "cd6407fef415f9ceeed441d4791ad971",
"assets/assets/11/11-03.jpeg": "87449dc4b8ed2baae731e45a77653d48",
"assets/assets/11/11-02.jpeg": "8bee91762ca48ae654c388bdfab1e79a",
"assets/assets/11/11-05.jpeg": "d06f8ba532e09004cb6888e21687a463",
"assets/assets/11/11-08.jpeg": "433b6b64e342eb86a44d08efceba7c88",
"assets/assets/11/11-04.jpeg": "ede509e07ea9600cc41a2e0750022aa9",
"assets/assets/10/10-06.jpeg": "4f93b4d1fa468ed33162f26d246b4a27",
"assets/assets/10/10-07.jpeg": "b1d194802b5fd2709eb9fc9c07ac2c2a",
"assets/assets/10/10-01.jpeg": "40acc228d54c8dc6120174cb1f434564",
"assets/assets/10/10-02.jpeg": "7491a874810970378b42d003406fc256",
"assets/assets/10/10-03.jpeg": "e88809eec58f967554190ee21d9b6755",
"assets/assets/10/10-04.jpeg": "3377108665bed460b0b87dc05e6607e1",
"assets/assets/10/10-08.jpeg": "9c599eb1dd25cef7cd992eaed2b7c3ed",
"assets/assets/10/10-05.jpeg": "4d816ce310352a506a4c53a215b2845c",
"assets/assets/image11.png": "b80a6b78c002da94ba3563747b7638b7",
"assets/assets/image10.jpg": "785f2fc90e7634318082e586a141dd72",
"assets/assets/07/07-02.jpeg": "647584bc77df3662ea6a8e2d5f156f2a",
"assets/assets/07/07-03.jpeg": "3bc257afce2e001560789c625cc5f9f8",
"assets/assets/07/07-04.jpeg": "251c77f5a9b3116863c5a796d82b563e",
"assets/assets/07/07-05.jpeg": "4285f7ab88564ef690643b59072a178c",
"assets/assets/07/07-08.png": "594f1580705013265735973c88cc9028",
"assets/assets/07/07-06.jpeg": "fe323f7fcad9861171eff978050b41e5",
"assets/assets/07/07-07.jpeg": "9a4fa33efd34ec59ae4d0fde2abb6ca0",
"assets/assets/07/07-01.jpeg": "c5330a89ccf79b967376ffd3b79f64c9",
"assets/assets/09/09-06.jpeg": "1f4d8760d4035609c2745cbc1a94705a",
"assets/assets/09/09-07.jpeg": "7524a022433b2f9b532c98e45849d92f",
"assets/assets/09/09-01.jpeg": "342ce6fbff220bcb14a84c4bd123e0d9",
"assets/assets/09/09-02.jpeg": "dcb071a9c8d65af1c8509468b0ddd1e7",
"assets/assets/09/09-03.jpeg": "f2f1f6593013d828fa77a5b2d13546ec",
"assets/assets/09/09-08.jpeg": "7afd23e67bdaec9f738cc5f25f4dd4d4",
"assets/assets/09/09-04.jpeg": "9b5972a4f503e9fa086b3f296f5f8715",
"assets/assets/09/09-05.jpeg": "78afe83e1f985a6951f950b86e3ff718",
"assets/assets/08/08-07.jpeg": "67742c7af6a462f5f731c63ba72bbaff",
"assets/assets/08/08-06.jpeg": "43c8c3a24f116dfc569c373033484b87",
"assets/assets/08/08-01.jpeg": "4f22f9a4cacd7c5f3ec78b9be12e77e3",
"assets/assets/08/08-03.jpeg": "d36dc51788cb8516e1cebcfbbdbc0324",
"assets/assets/08/08-02.jpeg": "cce65b06adf2a4157b3380b508001ee5",
"assets/assets/08/08-05.jpeg": "3b23a40083da705a2966128db001b98e",
"assets/assets/08/08-04.jpeg": "827f053ae1b21967d0a691fe38c904cb",
"assets/assets/08/08-08.jpeg": "4bcd801d3f7d5817d3c19f8a51018925",
"assets/assets/hehe.gif": "794919b0e59f972b57e1c36b5684f59e",
"assets/assets/image7.jpg": "a264038cd4c1daa18f75433f9c936887",
"assets/assets/image6.png": "bfaa78783746e5c6ed02358aad725149",
"assets/assets/image4.png": "3c24ee16f716334c9ab18fde6a781d5c",
"assets/assets/image5.png": "7fdf00122fda04070edaa240ad869309",
"assets/assets/image1.png": "6188facf62937a95e5438af866f163e6",
"assets/assets/12/12-01.jpeg": "cb9e92cabfe52ef9f6378611cabcd9a7",
"assets/assets/12/12-07.jpeg": "c28d3242ef3921fc7a9192f9ef46fa28",
"assets/assets/12/12-06.jpeg": "3135ecce4c448d7e89d662ba5f023f4e",
"assets/assets/12/12-05.jpeg": "a1a68b03a348a7d97859454d3004245d",
"assets/assets/12/12-04.jpeg": "2192df2b3fb135af2ae53ab84857fa31",
"assets/assets/12/12-08.jpeg": "b73f10fbab46501814564e1e90d25ebe",
"assets/assets/12/12-03.jpeg": "7dbf0483eadb56305aea48cc1eb72ebb",
"assets/assets/12/12-02.jpeg": "1767a7a0bb670e53f58bbd98511adcb8",
"assets/assets/image2.png": "e22309b836c930c24a024ff72398b7f3",
"assets/assets/image3.png": "099e20e854e2d0da66c36edb2f091bea",
"canvaskit/canvaskit.js": "97937cb4c2c2073c968525a3e08c86a3",
"canvaskit/profiling/canvaskit.js": "c21852696bc1cc82e8894d851c01921a",
"canvaskit/profiling/canvaskit.wasm": "371bc4e204443b0d5e774d64a046eb99",
"canvaskit/canvaskit.wasm": "3de12d898ec208a5f31362cc00f09b9e"
};

// The application shell files that are downloaded before a service worker can
// start.
const CORE = [
  "main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];
// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});

// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});

// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});

self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});

// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}

// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
