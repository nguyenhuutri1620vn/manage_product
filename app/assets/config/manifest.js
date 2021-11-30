//= link_tree ../images
//= link_directory ../stylesheets .css
$(document).on('ajax:success', '.your-form', function(e, data) {
    if(data.status == 'success'){
      showSuccessFlash(data);
    }else{
      showErrorFlash(data);
    }
});