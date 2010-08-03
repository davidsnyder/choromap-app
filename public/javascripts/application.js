// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {

$('#sample').hide();

$('a#show').click(function() {

    $('#sample').toggle(400);

    return false;

  });

});
