// Read the CSRF token provided by Rails.
jQuery(function() {
  var token = $('meta[name="csrf-token"]').attr('content');
  jQuery.ajaxPrefilter(function(options, originalOptions, xhr) {
    xhr.setRequestHeader('X-CSRF-Token', token);
  });
});
