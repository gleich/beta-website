'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/assets/LICENSE": "95415f942f80710c1113e10a9be3a2fa",
"/assets/assets/images/logo.png": "e94e2a82fde16d2ac04c1ac95f42ce9c",
"/assets/FontManifest.json": "0621fb7723859a382fc19210904f6578",
"/assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "2abd86f90b3fd9d18d950195282cd8d5",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/AssetManifest.json": "5ff5dc8643a27a9e3c4354d98fad7028",
"/index.html": "3908125d49c1dbe247e9954db5491ed0",
"/favicon.png": "e94e2a82fde16d2ac04c1ac95f42ce9c",
"/main.dart.js": "0eceb8fbc1174e60500327db51a4ba5f"
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
        return fetch(event.request, {
          credentials: 'include'
        });
      })
  );
});
