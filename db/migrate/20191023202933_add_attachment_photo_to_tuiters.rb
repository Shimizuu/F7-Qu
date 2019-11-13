class AddAttachmentPhotoToTuiters < ActiveRecord::Migration[6.0]
  def self.up
    change_table :tuiters do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :tuiters, :photo
  end
end
