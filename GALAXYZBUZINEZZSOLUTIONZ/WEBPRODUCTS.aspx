<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WEBPRODUCTS.aspx.cs" Inherits="GALAXYZBUZINEZZSOLUTIONZ.WEBPRODUCTS" %>

<!DOCTYPE html>

<html xmlns="https://www.w3.org/1999/xhtml">
    <head>
       
        <style>{
  box-sizing: border-box;
}

body {
  margin: 0;
  padding: 0;
  font-family: 'Open Sans', sans-serif;
  font-size: 16px;
  background: cornsilk;
  color: #333;
}

a {
  text-decoration: none;
}

.button {
  padding: 10px;
  border-radius: 5px;
  display: inline-block;
  background: steelblue;
  color: white;
  font-size: 12px;
  font-weight: bold;
}

.container {
  max-width: 960px;
  width: 100%;
  margin: 0 auto;
}

.header {
  overflow: hidden;
  height: 65px;
}

.header a {
  color: inherit;
}

.header a:hover {
  font-weight: bold;
}

.header-logo {
  float: left;
}

.header-nav {
  float: right;
}

.header-nav ul li {
  display: inline-block;
  margin: 0 20px;
}

.products {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}

.product {
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  max-width: 310px;
  width: 100%;
  padding: 10px;
  margin-bottom: 10px;
  border-radius: 5px;
  background: azure;
}


.product span {
  font-weight: bold;
}

.product-image img {
  display: block;
  max-width: 228px;
  width: 100%;
  margin: 0 auto;
}

.
.row .product:last-child {
  margin-right: 0;
}

.product-add-to-cart {
  overflow: hidden;
  clear: both;
  margin-top: 10px;
}

.see-more {
  float: left;
  background: indianred;
}

.add-to-cart {
  float: right;
}

.shopping-cart {
  position: fixed;
  top: 0;
  right: 0;
  width: 300px;
  min-heigh: 300px;
  margin-right: 20px;
  margin-top: 10px;
  padding: 20px;
  background: wheat;
}

.shopping-cart-head {
  background: steelblue;
  color: white;
  padding: 5px;
}

.shopping-cart,
.shopping-cart-head {
  border-radius: 5px;
}

.empty-cart-btn,
.cart-checkout {
  display: none;
  
}

.empty-cart-btn {
  margin-bottom: 5px;
}

.cart-checkout {
  background: limegreen;
}</style>
    </head>

    <body>


  <div class="container">
    <header class="header">
      <h3 class="header-logo">Simple Store</h3>
      
      <nav class="header-nav">
        <ul>
          <li><a href="#0">Home</a></li>
          <li><a href="#0">Products</a></li>
          <li><a href="#0">Contact</a></li>
        </ul>
      </nav>
    </header>
    
    <div class="products">
      
   
      
    </div><!-- products -->
    
    <div class="shopping-cart">
      <div class="shopping-cart-head">
        <span class="product-quantity">0</span> Product(s) in Cart
      </div>
      <ul class="shopping-cart-list">
      </ul>
      <div class="cart-buttons">
        <a href="#0" class="button empty-cart-btn">Empty</a>
        <a href="#0" class="button cart-checkout">Checkout - <span class="total-price">$0</span></a>
      </div>
    </div>
  </div><!-- container -->
             <script>
                 var ShoppingCart = (function ($) {
                     "use strict";

                     // Cahce necesarry DOM Elements
                     var productsEl = document.querySelector(".products"),
                         cartEl = document.querySelector(".shopping-cart-list"),
                         productQuantityEl = document.querySelector(".product-quantity"),
                         emptyCartEl = document.querySelector(".empty-cart-btn"),
                         cartCheckoutEl = document.querySelector(".cart-checkout"),
                         totalPriceEl = document.querySelector(".total-price");

                     // Fake JSON data array here should be API call
                     var products = [
                         {
                             id: 0,
                             name: "CONSULTATION",
                             description: "Kogi skateboard tattooed, whatever portland fingerstache coloring book mlkshk leggings flannel dreamcatcher.",
                             img.src = "CONSULTATIONimages.png",
                             price: 799
                         },
                         {
                             id: 1,
                             name: "iPhone 5S",
                             description: "Kogi skateboard tattooed, whatever portland fingerstache coloring book mlkshk leggings flannel dreamcatcher.",
                             img.src = "GRAPHICimages.png",
                             price: 349,
                         },
                         {
                             id: 2,
                             name: "Macbook",
                             description: "Kogi skateboard tattooed, whatever portland fingerstache coloring book mlkshk leggings flannel dreamcatcher.",
                             imageUrl: "http://www.icentar.me/mac/macbook/images/pro.jpg",
                             price: 1499
                         },
                         {
                             id: 3,
                             name: "Macbook Air",
                             description: "Kogi skateboard tattooed, whatever portland fingerstache coloring book mlkshk leggings flannel dreamcatcher.",
                             imageUrl: "http://www.icentar.me/mac/mbair/images/air.jpg",
                             price: 999
                         },
                         {
                             id: 4,
                             name: "Macbook Air 2013",
                             description: "Kogi skateboard tattooed, whatever portland fingerstache coloring book mlkshk leggings flannel dreamcatcher.",
                             imageUrl: "http://www.icentar.me/mac/mbair/images/air.jpg",
                             price: 599
                         },
                         {
                             id: 5,
                             name: "Macbook Air 2012",
                             description: "Kogi skateboard tattooed, whatever portland fingerstache coloring book mlkshk leggings flannel dreamcatcher.",
                             imageUrl: "http://www.icentar.me/mac/mbair/images/air.jpg",
                             price: 499
                         }
                     ],
                         productsInCart = [];

                     // Pretty much self explanatory function. NOTE: Here I have used template strings (ES6 Feature)
                     var generateProductList = function () {
                         products.forEach(function (item) {
                             var productEl = document.createElement("div");
                             productEl.className = "product";
                             productEl.innerHTML = <div class="product-image">
                                <img.src="${item.img.src}" alt="${item.name}">
                             </div>
                             <div class="product-name"><span>Product:</span> ${item.name}</div>
                             <div class="product-description"><span>Description:</span> ${item.description}</div>
                             <div class="product-price"><span>Price:</span> ${item.price} $</div>
                             <div class="product-add-to-cart">
                               <a href="#0" class="button see-more">More Details</a>
                               <a href="#0" class="button add-to-cart" data-id=${item.id}>Add to Cart</a>
                             </div>
                          </div>
`;

                             productsEl.appendChild(productEl);
                         });
                     }

                     // Like one before and I have also used ES6 template strings
                     var generateCartList = function () {

                         cartEl.innerHTML = "";

                         productsInCart.forEach(function (item) {
                             var li = document.createElement("li");
                             li.innerHTML = `${item.quantity} ${item.product.name} - $${item.product.price * item.quantity}`;
                             cartEl.appendChild(li);
                         });

                         productQuantityEl.innerHTML = productsInCart.length;

                         generateCartButtons()
                     }


                     // Function that generates Empty Cart and Checkout buttons based on condition that checks if productsInCart array is empty
                     var generateCartButtons = function () {
                         if (productsInCart.length > 0) {
                             emptyCartEl.style.display = "block";
                             cartCheckoutEl.style.display = "block"
                             totalPriceEl.innerHTML = "$ " + calculateTotalPrice();
                         } else {
                             emptyCartEl.style.display = "none";
                             cartCheckoutEl.style.display = "none";
                         }
                     }

                     // Setting up listeners for click event on all products and Empty Cart button as well
                     var setupListeners = function () {
                         productsEl.addEventListener("click", function (event) {
                             var el = event.target;
                             if (el.classList.contains("add-to-cart")) {
                                 var elId = el.dataset.id;
                                 addToCart(elId);
                             }
                         });

                         emptyCartEl.addEventListener("click", function (event) {
                             if (confirm("Are you sure?")) {
                                 productsInCart = [];
                             }
                             generateCartList();
                         });
                     }

                     // Adds new items or updates existing one in productsInCart array
                     var addToCart = function (id) {
                         var obj = products[id];
                         if (productsInCart.length === 0 || productFound(obj.id) === undefined) {
                             productsInCart.push({ product: obj, quantity: 1 });
                         } else {
                             productsInCart.forEach(function (item) {
                                 if (item.product.id === obj.id) {
                                     item.quantity++;
                                 }
                             });
                         }
                         generateCartList();
                     }


                     // This function checks if project is already in productsInCart array
                     var productFound = function (productId) {
                         return productsInCart.find(function (item) {
                             return item.product.id === productId;
                         });
                     }

                     var calculateTotalPrice = function () {
                         return productsInCart.reduce(function (total, item) {
                             return total + (item.product.price * item.quantity);
                         }, 0);
                     }

                     // This functon starts the whole application
                     var init = function () {
                         generateProductList();
                         setupListeners();
                     }

                     // Exposes just init function to public, everything else is private
                     return {
                         init: init
                     };

                     // I have included jQuery although I haven't used it
                 })(jQuery);

                 ShoppingCart.init();

             </script>  

       
    </body>
</html>