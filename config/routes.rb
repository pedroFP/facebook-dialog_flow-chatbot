Rails.application.routes.draw do
  # facebook chatbot routes
  get 'callback/index'
  post 'callback/index' => 'callback#recieved_data'
  get 'callback/recieved_data'
  # dialogflow chatbot routes
  post 'messages/index' => 'messages#send_message'
  get 'messages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
