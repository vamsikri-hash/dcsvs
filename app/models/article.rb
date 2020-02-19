class Article < ApplicationRecord

  #validations
  validates_presence_of :title, :content
end
