class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.belongs_to :user
      t.string :title, null: false, default: ""
      t.text :content, null: false, default: ""
      t.string :image, default: ""

      t.timestamps
    end
  end
end
