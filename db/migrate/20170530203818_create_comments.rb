class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :restroom_id
      t.string :title
      t.string :rating
      t.string :content

      t.timestamps

    end
  end
end
