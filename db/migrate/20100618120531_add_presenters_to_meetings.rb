class AddPresentersToMeetings < ActiveRecord::Migration
  def self.up
    create_table :meetings_users, :id => false do |t|
      t.belongs_to :meeting, :user
    end
  end

  def self.down
    drop_table :meetings_users
  end
end
