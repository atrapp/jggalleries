class CreatePictureFormats < ActiveRecord::Migration
  def change
    create_table :picture_formats do |t|
      t.string  :size
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
