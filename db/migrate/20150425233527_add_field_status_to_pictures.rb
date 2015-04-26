class AddFieldStatusToPictures < ActiveRecord::Migration
  def change
    add_column  :pictures, :status, :string
  end
end
