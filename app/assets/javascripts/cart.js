// function createOrderItem(product, user_id, cart_id) {
//   var newOrderItem = { selected_products: [product] };
//   var users= "/users/";
//   var userId= user_id
//   var carts="/carts/";
//   var cart= cart_id;
//   var url=users+user_id+carts+cart_id;
//
//   $.ajax({
//     type: "POST",
//     url: "/carts.json",
//     data: JSON.stringify({
//       todo: newOrderItem
//     }),
//     contentType: "application/json",
//     dataType: "json"
//   })
//   .done(function(data) {
//     console.log(data);
//
//     var cartId = data.id;
//     //
//     // var label = $('<label></label>')
//     //   .attr('for', checkboxId)
//     //   .html(title);
// //
// //     var cart = $('<input type="checkbox" value="1" />')
// //       .attr('id', checkboxId)
// //       .bind('change', toggleDone);
// //
// //     var tableRow = $('<tr class="todo"></td>')
// //       .attr('data-id', checkboxId)
// //       .append($('<td>').append(checkbox))
// //       .append($('<td>').append(label));
// //
// //     $("#todoList").append(tableRow);
// //
// //     updateCounters();
// //   })
// //
// //   .fail(function(error) {
// //     console.log(error)
// //     error_message = error.responseJSON.title[0];
// //     showError(error_message);
// //   });
// }
