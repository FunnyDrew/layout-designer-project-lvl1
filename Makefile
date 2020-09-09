install:
	npm install

lint:
	npx stylelint ./src/styles/*.css
	npx htmlhint ./src/*.html

deploy:
	npx surge ./src/ --domain myfirst-project.surge.sh/

sync:
	npx browser-sync start -s 'src' --files 'src/*.html'
