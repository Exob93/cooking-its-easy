class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.text :title
      t.string :body
      t.text :user

      t.timestamps
    end
  end
end
