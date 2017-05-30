class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.integer :comment_id
      t.string :photo_link

      t.timestamps

    end
  end
end
