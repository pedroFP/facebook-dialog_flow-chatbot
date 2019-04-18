$(document).on('turbolinks:load', function() {
  $('.hide-chat-box').click(function(){
          $('.chat-content').slideToggle();
  });

  var messageBody = document.querySelector('.chats');
  messageBody.scrollTop = messageBody.scrollHeight - messageBody.clientHeight;
});
