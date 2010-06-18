class MeetingsController < ApplicationController
  actions :index, :show
  respond_to :xml, :only => :index

  def current
    @meeting = Meeting.current
  end

  private

    def collection
      @meetings ||= end_of_association_chain.past
    end
end
