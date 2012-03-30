jQuery ->
  $(document).delegate ".remove-child", "click", ->
    $(this).prev(".hidden").find("input[type=hidden]").val "1"
    $(this).closest(".fields").slideUp "slow", ->
      $(this).removeClass("initially-hidden")
    false