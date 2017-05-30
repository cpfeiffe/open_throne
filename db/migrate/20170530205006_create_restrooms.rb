class CreateRestrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :restrooms do |t|
      t.string :location
      t.boolean :standalone
      t.string :name

      t.timestamps

    end
  end
end
