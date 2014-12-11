class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string  :title
      t.string :item_id
      t.text :caption
      t.date :creation_date

      t.timestamps
    end
  end
end
