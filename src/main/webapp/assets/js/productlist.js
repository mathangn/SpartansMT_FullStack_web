function updatebox(button) {
	document.querySelector("#product_update_box").style.display = "none";
	document.querySelector("#product_update_box1").style.display = "block";
            
	// let storeId = button.getAttribute("name");
    // document.getElementById("update_store_details").setAttribute("action", "UpdateStoreDetailsServlet?id=" + storeId);

}

function addbox() {
	document.querySelector("#product_update_box").style.display = "block";
    document.querySelector("#product_update_box1").style.display = "none";
}
        