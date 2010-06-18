class AddPublishedToMeetings < ActiveRecord::Migration
  def self.up
    add_column :meetings, :published, :boolean, :default => false
  end

  def self.down
    remove_column :meetings, :published
  end
end
