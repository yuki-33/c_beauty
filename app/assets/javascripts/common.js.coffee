  $('.js-add-form').click (e) ->
    last = $(this).closest('form').find('.js-form-group:last')
    clone = last.clone().insertAfter(last)
    inputs = $('input', clone).each(->
      s = $(this)
      s.val ''

      id = s.attr('id')
      name = s.attr('name')
      jsfor = s.attr('for')
      if id?
        i = parseInt(id.match(/\d+/))
        s.attr 'id', RegExp.leftContext + (i + 1) + RegExp.rightContext
      if name?
        i = parseInt(name.match(/\d+/))
        s.attr 'name', RegExp.leftContext + (i + 1) + RegExp.rightContext
      if jsfor?
        i = parseInt(jsfor.match(/\d+/))
        s.attr 'for', RegExp.leftContext + (i + 1) + RegExp.rightContext
      return
    )
