class AddFlagToCountry < ActiveRecord::Migration[5.2]
  def change
    add_column :countries, :flag, :string
  end
end
