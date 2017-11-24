class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :place
      t.references :trip, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
