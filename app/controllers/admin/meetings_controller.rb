class Admin::MeetingsController < ApplicationController
  actions :all, :except => :show

  create! { collection_url }
  update! { collection_url }
end
