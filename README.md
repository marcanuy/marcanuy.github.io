Marcanuy 
========

# About

This is the data for Marcelo
Canina's [website](https://marcanuy.com "https://marcanuy.com").

I use [Jekyll](https://github.com/jekyll/jekyll) to transform the
content of this repo into a static site.

# Features

- Multilanguage site without plugins.
- Routes for each language is in the form of (/es, /it, etc)

# Other

Screenshots generated with **[pageres](https://github.com/sindresorhus/pageres-cli)**

    $ sudo npm install --global pageres-cli
	$ cd assets/img/screenshots/
	$ pageres --scale=0.3 1366x768 http://gamesforkidsfree.net/en/
	$ identify gamesforkidsfree.net\!en-1366x768.png 
	gamesforkidsfree.net!en-1366x768 (1).png PNG 410x609 410x609+0+0 8-bit sRGB 202KB 0.000u 0:00.000
	$ convert gamesforkidsfree.net\!en-1366x768.png -crop 410x410+0+0 gamesforkidsfree.net-410x410.png

~~~ bash
$ pageres --scale=0.3 1366x768 \
http://cachedpage.co/ \
http://simpleit.rocks/ \
http://pullgravity.com/ \
http://emacside.com \
https://therunningsecret.com/ \
http://sayinspanish.com/ \
http://marcanuy.com/ \
http://gamesforkidsfree.net/ \
http://howmanyis.com/ \
http://converter.ninja/
$ pageres --scale=0.3 1366x768 \
https://cachedpage.co/ver-version-de-pagina-web-indexada-guardada-o-archivada \
http://pullgravity.com/es/ \
http://comosediceeningles.org/ \
http://marcanuy.com/es \
http://juegosgratisinfantiles.net/ \
http://cuantoes.net/ 

$ find . -type f ! -iname "noimage*" -print0|xargs -0 -I {} convert {} \
-crop 410x410+0+0 {}-thumb.png
~~~

# License

The **content** of the site (i.e., blog posts and page content) is
licensed under a
[Creative Commons Attribution License](http://creativecommons.org/licenses/by/3.0/us/):
you may use it, but you must give attribution.

**Icons** are from [FontAwesome library](http://fontawesome.io/).

The **structure, design, and layout** of the site are licensed under
the [MIT License](http://opensource.org/licenses/MIT).
