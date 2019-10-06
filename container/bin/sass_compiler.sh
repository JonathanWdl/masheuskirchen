#!/usr/bin/env bash

# path=$(dirname "0")/wwwroot/typo3conf/ext/masheuskirchen/Resources/Public/ 
path="$(dirname "0")/wwwroot/"
echo "Compiling Sass to Css ..."
sass $path/theme.scss $path/theme.css
echo "Done!"

