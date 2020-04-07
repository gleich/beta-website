'use strict';
const CACHE_NAME = 'flutter-app-cache';
const RESOURCES = {
  "/favicon.png": "e94e2a82fde16d2ac04c1ac95f42ce9c",
"/manifest.json": "0869184627e2c20e35064ef8deb13bc8",
"/icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"/icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"/assets/AssetManifest.json": "e400d47a0e889c7b713403143d9ab853",
"/assets/LICENSE": "117ee349efba71122c090dee9373014c",
"/assets/assets/images/logo.png": "e94e2a82fde16d2ac04c1ac95f42ce9c",
"/assets/assets/images/me.jpg": "f835a9990dea615cc1ca057c34766012",
"/assets/assets/fonts/Abel/Abel-Regular.ttf": "afc1550a0b170efd8f270a8316c85da7",
"/assets/assets/fonts/Tomorrow/Tomorrow-Italic.ttf": "ecaae64e3921c8eda06fdc51f95546ed",
"/assets/assets/fonts/Tomorrow/Tomorrow-Regular.ttf": "a03efb768048e9f34bf971cc4fd0856a",
"/assets/assets/fonts/Tomorrow/Tomorrow-Bold.ttf": "f70d9b95b989c2234748be255fe9a2d3",
"/assets/packages/material_design_icons_flutter/lib/fonts/materialdesignicons-webfont.ttf": "2abd86f90b3fd9d18d950195282cd8d5",
"/assets/fonts/MaterialIcons-Regular.ttf": "56d3ffdef7a25659eab6a68a3fbfaf16",
"/assets/FontManifest.json": "7d34da05541961a446e1971d6dbc3a32",
"/main.dart.js": "8c24c4b599016d7bb23ab0f32e6575f3",
"/index.html": "19ca746b58f1672d377510d82f8d6973"
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
