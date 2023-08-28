
		
  		function updatebox(button) {
            document.querySelector("#store_update_box").style.display = "none";
            document.querySelector("#store_update_box1").style.display = "block";
            
            let storeId = button.getAttribute("name");
            document.getElementById("update_store_details").setAttribute("action", "UpdateStoreDetailsServlet?id=" + storeId);

        }

        function addbox() {
            document.querySelector("#store_update_box").style.display = "block";
            document.querySelector("#store_update_box1").style.display = "none";
        }
        
        