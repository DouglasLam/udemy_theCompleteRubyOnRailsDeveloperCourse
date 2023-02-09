class ChatroomController < ApplicationController
  before_action :require_user # method is in application_controller.rb

  def index
    @message = Message.new
    @messages = Message.custom_display # calls the scope from the Message model which filters the last 20 messages for display to avoid excess data
  end

end
