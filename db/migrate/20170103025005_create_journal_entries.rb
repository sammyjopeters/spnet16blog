class CreateJournalEntries < ActiveRecord::Migration
  def change
    create_table :journal_entries do |t|
      t.string :byline
      t.text :notes
      t.float :temperature, precision: 2
      t.float :rainfall_24hr
      t.references :garden, index: true, foreign_key: true
      t.string :impression

      t.timestamps null: false
    end
  end
end
