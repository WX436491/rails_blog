class CreatePictureFileCallbacks < ActiveRecord::Migration[5.1]
  def change
    create_table :picture_file_callbacks do |t|

      t.timestamps
    end
  end
end
