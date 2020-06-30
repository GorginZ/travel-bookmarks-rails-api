class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
