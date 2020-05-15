'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "main.dart.js": "fd8b9cc3234758ce6108fb6b41bba816",
"assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"assets/FontManifest.json": "83d8cc8cbc762691f1f015c88de12edf",
"assets/LICENSE": "19179c261e4b362b4d90807476f61252",
"assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "2abd86f90b3fd9d18d950195282cd8d5",
"assets/assets/fonts/googleFonts/Abel/Abel-400.ttf": "f48ede027d639586e5d96d8583708f7a",
"assets/assets/fonts/googleFonts/Tomorrow/Tomorrow-400.ttf": "8f9c1e8901890cbb0b792dc99f5db932",
"assets/assets/fonts/googleFonts/Tomorrow/Tomorrow-400i.ttf": "779116688dc64d9109caf2e92629cf2b",
"assets/assets/fonts/googleFonts/Tomorrow/Tomorrow-700.ttf": "5556384851cee02430156ff8349c0393",
"assets/assets/fonts/computer-modern/cmunti.ttf": "86153f0958ae90bf30249dcb98d04a7d",
"assets/assets/images/me.jpg": "7ce42ed77e1ce52872dd8cfc18b63dd9",
"assets/assets/images/logo.png": "e94e2a82fde16d2ac04c1ac95f42ce9c",
"assets/AssetManifest.json": "74d0fa0cc26f3f931d31399ae4152cbf",
"favicon.png": "e94e2a82fde16d2ac04c1ac95f42ce9c",
"manifest.json": "23681046856927b4f2dd54e654d6df9c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"index.html": "fa1f390597250c121b26ad38ebb9a8f7",
"/": "fa1f390597250c121b26ad38ebb9a8f7"
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
