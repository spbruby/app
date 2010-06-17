class Meeting < ActiveRecord::Base
  validates_presence_of :date, :title, :description

  scope :future, lambda { where(['date >= ?', Date.today]) }
  scope :past, lambda { where(['date < ?', Date.today]) }

  def self.current
    Meeting.future.order(:date).first ||
      Meeting.past.order('date DESC').first
  end
end
