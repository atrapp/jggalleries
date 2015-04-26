class AddFieldsPriceAndSizeToPictures < ActiveRecord::Migration
  def change
    add_column  :pictures, :price, :decimal, precision: 8, scale: 2
    add_column  :pictures, :size, :string
  end
end
