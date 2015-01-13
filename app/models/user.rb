class User < ActiveRecord::Base

  devise :database_authenticatable, :registerable, :rememberable, :recoverable, :trackable, :validatable, :omniauthable, :confirmable, :lockable

  validates_presence_of :username, on: :create
  validates_uniqueness_of :username

  has_many :posts
  has_many :comments
  has_many :favorites

  has_attached_file :avatar, :styles => {
    :medium => "300x300>",
    :thumb => "100x100>"
  }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  def is_admin?
    ["jglass", "rstrong", "atrapp"].include? self.username
  end

end
