default:
	browserify src/main.js -o public/js/bundle.js

publish:
	git subtree push --prefix public origin gh-pages
	@echo ""
	@echo "--------------------------------------------"
	@echo 'Go to: http://gamemash.github.io/PROJECT_NAME/'

develop:
	budo src/main.js:public/js/bundle.js --serve js/bundle.js --live --open --dir ./public -v