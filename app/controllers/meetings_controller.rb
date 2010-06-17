class MeetingsController < ApplicationController
  def current
    @meeting = Meeting.current
  end
end
