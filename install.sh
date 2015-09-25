#!/usr/bin/env bash

cd lib/
python setup.py build_ext --inplace
if [ -d build/ ]; then
	rm -r build/
fi
cd ../

if [ ! -f app.cfg ]; then
    cp app.cfg.sample app.cfg
fi

echo "start the server with './serve.py'"
