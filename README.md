# Ayvri Visibility Toggler
Toggles the visibility of all tracks on ayvri.com
## Installation on Chrome (on Linux)
1. Make your browser's bookmark bar visible by pressing `ctrl+shift+b`
2. Select all the content of the gray box below (tripple click in the box) and press `ctrl+c`
3. Now right click the book mark bar and select `Add page...`
4. Paste the content of the gray box into the `URL:` field by clearing its content and pressing `ctrl+v`.
5. Save the bookmark, open an ayvri scene and click on the bookmark to use the new function.
```
javascript:  /*  * Toggles visibility of all tracks on Ayvri.   */   ( function(){  function tagsWithClass(tag, cls){  tags = Array.from(document.getElementsByTagName(tag));  return tags.filter(createClassFilter(cls)); }  function createClassFilter(cls){  return function(tag){   attributeClass = tag.getAttribute('class');   return attributeClass && attributeClass.indexOf(cls) != -1;  } }  function click(element){  element.click() }  /* show tracks, if not yet shown */ as = tagsWithClass('a', 'src-components-trackSelector-___TrackSelector__TrackSelectorButton'); as[0] && click(as[0]);  /* toggle visibility */ toggles = tagsWithClass('div', 'src-components-trackSelector-___TrackSelector__visToggle'); toggles.forEach(click); })() 
```
## Updates
If ayvri.com makes some changes to their code, the bookmark might not work anymore. Wait for this page to update, remove the bookmark and install it again.
## Disclaimer
This is a code injection which could be used against you. Only use sources you trust.
