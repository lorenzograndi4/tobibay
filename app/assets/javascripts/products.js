function updateCounters() {
  $("#products-count").html($(".product").size());
  $("#completed-count").html($(".success").size());
}
