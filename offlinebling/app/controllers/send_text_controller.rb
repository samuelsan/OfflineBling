require 'twilio-ruby'

class SendTextController < ApplicationController
  def index
    @phone = Phone.new
  end

  def send_text_message
    number_to_send_to = params[:number_to_send_to]

    account_sid = 'ACb3597a2c906071d802da9920132013f0' 
    auth_token = '31471af84f955d2942742f8c2e4c68f5' 

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @client.account.messages.create({
      :from => '+16474925464', 
      :to => '7788626326', 
      :body => 'hello world',  
    })
  end
end
