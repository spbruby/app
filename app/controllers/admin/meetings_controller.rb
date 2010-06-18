class Admin::MeetingsController < ApplicationController
  before_filter :authenticate_admin!

  actions :all, :except => :show

  create! { collection_url }
  update! { collection_url }
end
