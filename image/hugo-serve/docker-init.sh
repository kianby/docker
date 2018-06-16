#!/bin/bash

cd /site
hugo server --config=$CONFIG_FILE --disableFastRender --watch=true --port=80 --bind="0.0.0.0"


