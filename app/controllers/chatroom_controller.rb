class ChatroomController < ApplicationController
  before_action :require_user # method is in application_controller.rb

  def index
    @message = Message.new
    @messages = Message.all
  end

end
