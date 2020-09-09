install:
	npm install

lint:
	npx stylelint ./src/styles/*.css
	npx htmlhint ./src/*.html

deploy:
	npx surge ./src/

sync:
	npx browser-sync start -s 'src' --files 'src/*.html'
