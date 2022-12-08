class AddSnackToFood < ActiveRecord::Migration[7.0]
  def change
    add_column :foods, :snack, :string
  end
end
