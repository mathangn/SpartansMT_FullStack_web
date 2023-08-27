/**
 * 
 */
		/*
  		function updatebox() {
            document.querySelector("#store_update_box").style.display = "block";
            document.querySelector("#update_btn").style.display = "block";
            document.querySelector("#add_product_btn").style.display = "none";
            document.getElementById("store_header").innerText = "Update Store Details";
        }

        function addbox() {
            document.querySelector("#store_update_box").style.display = "block";
            document.querySelector("#update_btn").style.display = "none";
            document.querySelector("#add_product_btn").style.display = "block";
            document.getElementById("store_header").innerText = "Add Store Details";
        }
        */
        
        function addbox() {
            document.querySelector("#store_update_box").style.display = "block";
			document.querySelector("#add_store_details").style.display = "block";
			document.querySelector("#update_store_details").style.display = "none";
        }
        
        function updatebox() {
            document.querySelector("#store_update_box").style.display = "block";
			document.querySelector("#add_store_details").style.display = "none";
			document.querySelector("#update_store_details").style.display = "block";
        }
        
        