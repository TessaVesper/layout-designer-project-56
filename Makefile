install:
	npm install

lint:
	npx stylelint ./src/css/*.css
	npx stylelint ./src/scss/**/*.scss
	npx htmlhint ./src/*.html

deploy:
	npx surge ./src/

sass:
	npx sass --watch ./src/scss/main.scss ./src/css/style.css

pug:
	npx pug ./src/index.pug --pretty -w -o ./src/build/