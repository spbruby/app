class Meeting < ActiveRecord::Base
  validates_presence_of :date, :title, :description
end
