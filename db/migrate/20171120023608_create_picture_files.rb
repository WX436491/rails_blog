class CreatePictureFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :picture_files do |t|

      t.timestamps
    end
  end
end
