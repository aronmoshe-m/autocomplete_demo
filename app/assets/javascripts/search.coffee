template = (item) -> item.text # this is how the results will look like in dropdown
# currently we simply display the content, like "Bob Smith (some domain)"
# but you may use HTML tags here

jQuery ->
  $('.autocomplete').select2
    ajax: {
      url: '/users.json' # this is the URL to fetch matched results
      data: (params) ->
        {
          q: params.term # the resulting URL will be http://localhost:3000/users.json?q=some_name
        }
      dataType: 'json'
      delay: 500 # 0.5 seconds will pass before sending the request to avoid bombarding the server with queries
      processResults: (data, params) ->
        {
          results: _.map(data, (el) ->
            {
              text: "#{el.fname} #{el.lname} (#{el.domain})" # this is the TEXT to display for each
              # result in the DROPDOWN.
              id: el.id
            }
          )
        }
      cache: true
    }
    escapeMarkup: (markup) -> markup
    minimumInputLength: 2
    templateResult: template # this is the template to use for the selected result
    templateSelection: template # this is the template to use for the results in dropdown
    # both options use the same template for now (it is defined at the first line of this file)