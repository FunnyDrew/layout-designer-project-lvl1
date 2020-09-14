install:
	npm install

lint:
	npx htmlhint ./src/*.html
	npx stylelint ./src/styles/*.css
	
deploy:
	npx surge ./src/ --domain myfirst-project.surge.sh/

sync:
	npx browser-sync start -s 'src' --files 'src/*.html'
