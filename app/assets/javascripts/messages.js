$(document).on('turbolinks:load', function() {
  $('.hide-chat-box').click(function(){
          $('.chat-content').slideToggle();
  });
});
