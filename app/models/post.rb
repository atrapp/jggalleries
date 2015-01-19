require "kaminari"

class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments

# def self
#   post=Post.new
#   # @post=Post.find_by_id(params[:id])
#   # respond_with(@posts)
# end

end


