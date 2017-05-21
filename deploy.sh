#!/usr/bin/env bash
#
# Copy Jekyll site to S3 bucket
#
####################################
#
# Custom vars
#
s3_bucket="s3://marcanuy.com/"
####################################

set -e # halt script on error
set -v # echo on

echo "Pushing to periscopio"
git push periscopio

echo "Building site"
JEKYLL_ENV=production bundle exec jekyll build

#html-minifier --collapse-whitespace --trim-custom-fragments --remove-comments --html5 --minify-css --minify-js --input-dir _site --output-dir _site --file-ext html
#html-minifier --remove-comments --minify-css --input-dir _site --output-dir _site --file-ext css
#html-minifier --minify-js --input-dir _site --output-dir _site --file-ext js

# remove .html extension
find _site/ -type f ! -iname 'index.html' -iname '*.html' -print0 | while read -d $'\0' f; do mv "$f" "${f%.html}"; done

echo "Htmlproofer..."
bundle exec htmlproofer --check-html --disable-external --enforce-https --file-ignore /bower_components/ _site

echo "Copying files to server..."
aws s3 cp _site/ $s3_bucket --recursive --exclude "*" --include "*.*"

echo "Copying files with content type..."
aws s3 cp _site/ $s3_bucket --content-type text/html --recursive --exclude "*.*"
