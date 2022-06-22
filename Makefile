
file_content := cat ayvri.js
file_content_flat := cat ayvri.js | tr "\n" " " | tr "\t" " "

readme: clear_readme
	echo "# Ayvri Visibility Toggler" >> README.md
	echo "Toggles the visibility of all tracks on ayvri.com" >> README.md
	
	echo "## Installation on Chrome (on Linux)" >> README.md
	echo "1. Make your browser's bookmark bar visible by pressing \`ctrl+shift+b\`" >> README.md
	echo "2. Select all the content of the gray box below (tripple click in the box) and press \`ctrl+c\`" >> README.md
	echo "3. Now right click the book mark bar and select \`Add page...\`" >> README.md
	echo "4. Paste the content of the gray box into the \`URL:\` field by clearing its content and pressing \`ctrl+v\`." >> README.md
	echo "5. Save the bookmark, open an ayvri scene and click on the bookmark to use the new function." >> README.md
	echo "\`\`\`" >> README.md
	$(file_content_flat) >> README.md
	echo "" >> README.md
	echo "\`\`\`" >> README.md
	
	echo "## Updates" >> README.md
	echo "If ayvri.com makes some changes to their code, the bookmark might not work anymore. Wait for this page to update, remove the bookmark and install it again." >> README.md
	
	echo "## Disclaimer" >> README.md
	echo "This is a code injection which could be used against you. Only use sources you trust." >> README.md
	
	
clear_readme:
	rm README.md
	touch README.md
