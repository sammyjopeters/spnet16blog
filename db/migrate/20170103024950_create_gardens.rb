class CreateGardens < ActiveRecord::Migration
  def change
    create_table :gardens do |t|
      t.string :name
      t.string :garden_type
      t.string :structure
      t.date :started
      t.string :sun
      t.string :soil
      t.string :drainage
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
