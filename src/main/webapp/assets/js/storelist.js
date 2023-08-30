
		
function updatebox(storeId, storeName, storeCategory, storeLogoUrl) {
	console.log("storename: " + storeName);
    document.querySelector("#store_update_box").style.display = "none";
    document.querySelector("#store_update_box1").style.display = "block";
           
    //console.log("Store ID:" + store);
           	
    // let storeLogoUrl = button.getAttribute("name");
    // console.log("ID:" + storeId);
	document.getElementById("update_store_details").setAttribute("action", "UpdateStoreDetailsServlet?id=" + storeId);
	
	document.getElementById("title1").setAttribute("value", storeName);
    document.getElementById("category1").setAttribute("value", storeCategory);
    document.getElementById("image1").setAttribute("value", storeLogoUrl);
    
    /*titleInput.value = storeName;
    categoryInput.value = storeCategory;
    imageInput.value = storeLogoUrl;
    
    console.log(titleInput.value);
    console.log(categoryInput.value);
    console.log(imageInput.value);*/

}

function cancelbox(){
	document.querySelector("#store_update_box").style.display = "none";
	document.querySelector("#store_update_box1").style.display = "none";
}

function addbox() {
    document.querySelector("#store_update_box").style.display = "block";
	document.querySelector("#store_update_box1").style.display = "none";
}
        
function deletebox(storeId){
    document.querySelector("#delete_box").style.display = "block";    
 
    document.getElementById("delete_btn").setAttribute("action", "DelectStoreDetailsServlet?storeId=" + storeId);   
}

function canceldelectbox(){
    document.querySelector("#delete_box").style.display = "none";
}
   
        
        