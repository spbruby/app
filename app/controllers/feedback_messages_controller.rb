class FeedbackMessagesController < ApplicationController
  actions :new, :create

  def create
    @feedback_message = FeedbackMessage.new(params[:feedback_message])
    @feedback_message.request = request
    create! do |success, failure|
      success.html { render :action => :create }
    end
  end
end
