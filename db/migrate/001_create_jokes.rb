class CreateJokes < ActiveRecord::Migration[5.2]
  def change
   create_table :jokes do |t|
      t.string :name 
      t.string :theme 
      t.text :text
      #t.integer :likes
    end
  end
end
