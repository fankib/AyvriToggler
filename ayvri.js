javascript:

/*
 * Toggles visibility of all tracks on Ayvri. 
 */
 
(
function(){

function tagsWithClass(tag, cls){
	tags = Array.from(document.getElementsByTagName(tag));
	return tags.filter(createClassFilter(cls));
}

function createClassFilter(cls){
	return function(tag){
		attributeClass = tag.getAttribute('class');
		return attributeClass && attributeClass.indexOf(cls) != -1;
	}
}

function click(element){
	element.click()
}

/* show tracks, if not yet shown */
as = tagsWithClass('a', 'src-components-trackSelector-___TrackSelector__TrackSelectorButton');
as[0] && click(as[0]);

/* toggle visibility */
toggles = tagsWithClass('div', 'src-components-trackSelector-___TrackSelector__visToggle');
toggles.forEach(click);
})()
