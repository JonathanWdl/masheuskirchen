#!/usr/bin/env bash

path=$(dirname "0")/wwwroot/typo3conf/ext/mash_sitepackage/Resources/Public/Scss/Theme/
target=$(dirname "0")/wwwroot/typo3conf/ext/mash_sitepackage/Resources/Public/Css
echo "Compiling Sass to Css ..."
sass $path/theme.scss $target/theme.css
echo "Done!"

