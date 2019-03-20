class MessagesController < ApplicationController
  #Dialogflow chatbot
  def index
  end

  def send_message
    @client = ApiAiRuby::Client.new(
        :client_access_token => 'your_token' #Here put yout client access token from your API.ai account
    )
    @text = params[:message]
    @response = @client.text_request("#{@text}")
    puts @message = @response[:result][:fulfillment][:speech]
  end
end
