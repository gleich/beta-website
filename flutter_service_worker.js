'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/index.html": "142ee2cf6ef7df72abc7ed4e71bc30fa",
"/main.dart.js": "a4e3725c131054168dbd001990770794",
"/favicon.png": "e94e2a82fde16d2ac04c1ac95f42ce9c",
"/assets/LICENSE": "eb1416ec4a382f89722b804710d953ab",
"/assets/AssetManifest.json": "5ff5dc8643a27a9e3c4354d98fad7028",
"/assets/FontManifest.json": "0621fb7723859a382fc19210904f6578",
"/assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "2abd86f90b3fd9d18d950195282cd8d5",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/assets/images/logo.png": "e94e2a82fde16d2ac04c1ac95f42ce9c"
};

self.addEventListener('activate', function (event) {
  event.waitUntil(
    caches.keys().then(function (cacheName) {
      return caches.delete(cacheName);
    }).then(function (_) {
      return caches.open(CACHE_NAME);
    }).then(function (cache) {
      return cache.addAll(Object.keys(RESOURCES));
    })
  );
});

self.addEventListener('fetch', function (event) {
  event.respondWith(
    caches.match(event.request)
      .then(function (response) {
        if (response) {
          return response;
        }
        return fetch(event.request);
      })
  );
});
