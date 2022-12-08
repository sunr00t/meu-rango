class CreateSnacks < ActiveRecord::Migration[7.0]
  def change
    create_table :snacks do |t|
      t.string :title
      t.references :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
