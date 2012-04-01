function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g");
  var regexp2 = new RegExp("potentially-hidden", "g");
  content = content.replace(regexp2, "initially-hidden");
  $(link).parent().siblings(".holder").first().append(content.replace(regexp, new_id));
  $(".initially-hidden").slideDown("slow");
}