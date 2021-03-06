class Picture < ActiveRecord::Base

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates_attachment :image, :presence => true,
    :content_type => { :content_type => ["image/jpeg", "image/jpg", "image/gif", "image/png"] },
    :size => { :less_than => 1.megabytes }

  validates_presence_of :title, on: :create
  validates_presence_of :item_id, on: :create
  validates_uniqueness_of :item_id
  validates_presence_of :caption, on: :create
  validates_presence_of :creation_date, on: :create

  has_and_belongs_to_many :galleries
  has_many :picture_formats

  def next
    Picture.all.order("item_id ASC").where("item_id > ?", item_id).first
  end

  def previous
    Picture.all.order("item_id ASC").where("item_id < ?", item_id).last
  end

end
