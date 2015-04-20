class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # devise :database_authenticatable, :registerable, :rememberable, :recoverable, :trackable, :validatable, :omniauthable, :confirmable, :lockable
  devise :database_authenticatable, :registerable, :rememberable, :recoverable, :trackable, :validatable, :omniauthable, :lockable

  validates_presence_of :first_name, on: :create
  validates_length_of :first_name, :minimum => 2, too_short: "is too short. Minimum length is 2 characters."
  validates_format_of :first_name, :with => /\A[-a-z]+\z/i, message: "invalid. Only characters allowed."
  validates_presence_of :last_name, on: :create
  validates_length_of :last_name, :minimum => 2, too_short: "is too short. Minimum length is 2 characters."
  validates_format_of :last_name, :with => /\A[-a-z]+\z/i, message: "invalid. Only characters allowed."
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
    ["admin"].include? self.role
  end

end
