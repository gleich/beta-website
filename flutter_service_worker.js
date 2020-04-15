'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "index.html": "e1aea9699d2584f2af1e590f3e7c95cb",
"/": "e1aea9699d2584f2af1e590f3e7c95cb",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "2abd86f90b3fd9d18d950195282cd8d5",
"assets/assets/fonts/googleFonts/Tomorrow/Tomorrow-400.ttf": "8f9c1e8901890cbb0b792dc99f5db932",
"assets/assets/fonts/googleFonts/Tomorrow/Tomorrow-400i.ttf": "779116688dc64d9109caf2e92629cf2b",
"assets/assets/fonts/googleFonts/Tomorrow/Tomorrow-700.ttf": "5556384851cee02430156ff8349c0393",
"assets/assets/fonts/googleFonts/Abel/Abel-400.ttf": "f48ede027d639586e5d96d8583708f7a",
"assets/assets/images/logo.png": "e94e2a82fde16d2ac04c1ac95f42ce9c",
"assets/assets/images/me.jpg": "f835a9990dea615cc1ca057c34766012",
"assets/FontManifest.json": "58fef7fe80e103edffa8cc7e898421e2",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/AssetManifest.json": "69084ca36246c88f55a85ea7b1059005",
"assets/LICENSE": "f527ed8537cfb577edd8f449e908ab36",
"favicon.png": "e94e2a82fde16d2ac04c1ac95f42ce9c",
"main.dart.js": "78c65e1a074dc41a678acf65699f10a6",
"manifest.json": "2744b860e55ad45b0ad58bb2201212ea"
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
