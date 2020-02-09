#!/bin/bash

# Remove local files
rm -rf main.dart.js
rm -rf favicon.png
rm -rf assets
rm -rf flutter_service_worker.js
rm -rf main.dart.js.map
rm -rf index.html

# Copy files from build
cp -r build/web/assets .
cp build/web/favicon.png .
cp build/web/flutter_service_worker.js .
cp build/web/index.html .
cp build/web/main.dart.js .
cp build/web/main.dart.js.map .

echo "Done"