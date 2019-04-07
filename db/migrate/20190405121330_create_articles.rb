class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false, index: true
      t.text :explain
      t.text :text, null: false
      t.integer :user_id, foreign_key: true
      t.timestamps
    end
  end
end
