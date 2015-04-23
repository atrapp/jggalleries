class CreateGalleriesPictures < ActiveRecord::Migration
  def change
    create_table :galleries_pictures, id: false do |t|
      t.belongs_to :gallery, index: true
      t.belongs_to :picture, index: true
    end
  end
end
