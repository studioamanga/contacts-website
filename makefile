all:
	haml render index.html.haml > index.html
	sass style.scss:style.css
	git -C ~/Developer/contacts/ pull
	cp ~/Developer/contacts/releasenotes.html .
	cp ~/Developer/contacts/releasenotes.json .
	open .
	open /Applications/Cyberduck.app
	
watch:
	sass --watch style.scss:style.css