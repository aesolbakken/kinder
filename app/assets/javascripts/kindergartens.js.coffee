jQuery ->
  $(document).delegate ".remove-child", "click", ->
    $(this).parent().siblings(".hidden").find("input[type=hidden]").val "1"
    $(this).closest(".fields").slideUp "slow", ->
      $(this).removeClass("initially-hidden")
    false

  $(".date_picker").live "focusin", ->
    $this = $(this)
    $this.datepicker({ dateFormat: 'dd.mm.yy' })  unless $this.is(":data(datepicker)")