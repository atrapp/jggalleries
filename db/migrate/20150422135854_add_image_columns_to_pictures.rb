class AddImageColumnsToPictures < ActiveRecord::Migration
  def change
    add_attachment :pictures, :image
  end
end
