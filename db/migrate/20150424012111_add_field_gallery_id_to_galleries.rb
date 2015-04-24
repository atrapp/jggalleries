class AddFieldGalleryIdToGalleries < ActiveRecord::Migration
  def change
    add_column  :galleries, :gallery_ident,  :string
  end
end
