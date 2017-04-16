class CreateInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :infos do |t|
      t.string :title
      t.text :content
      t.string :img_url
      t.integer :user_id

      t.timestamps
    end
  end
end
