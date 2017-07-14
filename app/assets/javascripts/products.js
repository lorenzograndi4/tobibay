'use strict';

function updateCounters() {
  $("#products-count").html($(".product").size());
  $("#completed-count").html($(".selected").size());
}

// function createProduct(name) {
//
//   var newProduct = { name: name, price: 111 };
//
//   $.ajax({
//     type: "POST",
//     url: "/products.json",
//     data: JSON.stringify({
//         product: newProduct
//     }),
//     contentType: "application/json",
//     dataType: "json"
//   })
//   .done(function(data) {
//     console.log(data);
//
//     var productId = "product-" + nextProductId();
//
//     var label = $('<label></label>')
//       .attr('for', productId)
//       .html(name);
//     var tableRow = $('<tr class="todo"></td>')
//       .append($('<td>').append(checkbox))
//       .append($('<td>').append(label));
//
//     $("#product-list").append( tableRow );
//
//     updateCounters();
//   }
//
// function submitProduct(event) {
//   event.preventDefault();
//   createProduct($("#product_name").val());
//   $("#product_name").val(null);
//   updateCounters();
// }

$(document).ready(function() {
  updateCounters();
});
