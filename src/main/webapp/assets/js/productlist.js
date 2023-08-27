/**
 * 
 */

  function updatebox() {
            document.querySelector("#product_update_box").style.display = "block";
            document.querySelector("#update_btn").style.display = "block";
            document.querySelector("#add_product_btn").style.display = "none";
            document.getElementById("product_header").innerText = "Update Product Details";
  }

        function addbox() {
            document.querySelector("#product_update_box").style.display = "block";
            document.querySelector("#update_btn").style.display = "none";
            document.querySelector("#add_product_btn").style.display = "block";
            document.getElementById("product_header").innerText = "Add Product Details";
        }