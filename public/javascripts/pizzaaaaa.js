$.fn.serializeObject = function() {
    var o = {};
    var a = this.serializeArray();
    $.each(a, function() {
        if (o[this.name]) {
            if (!o[this.name].push) {
                o[this.name] = [o[this.name]];
            }
            o[this.name].push(this.value || '');
        } else {
            o[this.name] = this.value || '';
        }
    });
    return o;
};

$(function() {
  var loading = "<span class='loading icon'></span>Looking up Senator...";
  $("label").inFieldLabels();
  $('form.location').submit(function(e) {
    var data = $(this).serializeObject();
    e.preventDefault();
    $.getJSON("/location?location=" + encodeURIComponent(data.location), function(location) {
      console.log(location);
    })
  })
  $('.button').click(function(e) {
    var state = $('#state').val();
    if (state === "") {
      alert('ENTER YOUR STATE YO' + state);
      return;
    }
    e.preventDefault();
    $('.button').html(loading);
  });
})