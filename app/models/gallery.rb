class Gallery < ActiveRecord::Base
  has_and_belongs_to_many :pictures
end
