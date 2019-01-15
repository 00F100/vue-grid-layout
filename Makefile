dist: webpackbuild crossenvpro webpackbuildmin

dev: dist crossenvdev webpackdev


webpackbuild:
	./node_modules/.bin/webpack --progress --hide-modules --config webpack.build.js

crossenvpro:
	./node_modules/.bin/cross-env NODE_ENV=production

crossenvdev:
	./node_modules/.bin/cross-env NODE_ENV=development

webpackbuildmin:
	./node_modules/.bin/webpack --progress --hide-modules --config  webpack.build.min.js

webpackdev:
	./node_modules/.bin/webpack-dev-server --open --inline --hot