class CallbackController < ApplicationController
  #Facebook chatbot
  protect_from_forgery with: :null_session

  def index
    if params["hub.verify_token"] == "your_token"
      render text: params["hub.challenge"]
    end
  end

  def recieved_data
    therequest = request.body.read
    data = JSON.parse(therequest)
    entries = data["entry"]
    entries.each do |entry|
      entry["messaging"].each do |messaging|
        sender = messaging["sender"]["id"]
        text = messaging["message"]["text"]
        myjson = {"recipient": {"id": "#{sender}"},"message": {"text": "#{text}"}}
        puts HTTP.post(url, json: myjson)
      end
    end
    render "recieved_data"
  end

  def url
    "https://graph.facebook.com/v2.6/me/messages?access_token=your_token"
  end
end
