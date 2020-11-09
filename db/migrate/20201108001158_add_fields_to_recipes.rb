class AddFieldsToRecipes < ActiveRecord::Migration[5.2]
  def change
    change_table(:recipes) do |t|
      t.string :description
      t.string :image_url
      t.string :tags
      t.string :chef_name
    end
  end
end
