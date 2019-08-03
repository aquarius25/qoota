class CreateSimplifiedCharts < ActiveRecord::Migration[5.2]
  def change
    create_table :simplified_charts do |t|
      t.string :item, null: false
      t.string :word, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
