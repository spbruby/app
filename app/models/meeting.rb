class Meeting < ActiveRecord::Base
  has_and_belongs_to_many :presenters, :class_name => 'User'

  validates_presence_of :date, :title

  scope :future, lambda { where(['date >= ?', Date.today]) }
  scope :past, lambda { where(['date < ?', Date.today]) }

  def self.current
    Meeting.future.order(:date).first ||
      Meeting.past.order('date DESC').first
  end
end
