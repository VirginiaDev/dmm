/**
 * 
 */
function loadCategoryForFreeAuditForm(Category){
	var cat=Category;
	if(Category=='index' || Category=='aboutus'){
		document.getElementById('source_page').value='other';
		document.getElementById('pageurl').value=Category;
		document.getElementById('options_div').style.display='block';
	}else{
		document.getElementById('source_page').value=Category;
		document.getElementById('pageurl').value=Category;
		document.getElementById('options_div').style.display='none';
	}
	
}