class CreateQiitaItems < ActiveRecord::Migration[5.2]
  def change
    create_table :qiita_items do |t|
      t.string :title
      t.string :url
      t.integer :like_count

      t.timestamps
    end
  end
end
