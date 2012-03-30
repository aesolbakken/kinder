function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  $(link).parent().siblings(".inner").first().prepend(content.replace(regexp, new_id));
  $(".initially-hidden").slideDown("slow");
}