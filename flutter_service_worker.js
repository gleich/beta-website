'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/favicon.png": "e94e2a82fde16d2ac04c1ac95f42ce9c",
"/main.dart.js": "3734e59a41ad1bccb24cfc2067687a42",
"/index.html": "3908125d49c1dbe247e9954db5491ed0",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/FontManifest.json": "bb04d3506b9394c37925c466a3696250",
"/assets/LICENSE": "5f914347debb1c219b9ba12ad83ca897",
"/assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "2abd86f90b3fd9d18d950195282cd8d5",
"/assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "115e937bb829a890521f72d2e664b632",
"/assets/assets/images/logo.png": "e94e2a82fde16d2ac04c1ac95f42ce9c",
"/assets/assets/fonts/Abel-Regular.ttf": "afc1550a0b170efd8f270a8316c85da7",
"/assets/AssetManifest.json": "5e63fdfed0d14c11c5fff28a2e851a46"
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
