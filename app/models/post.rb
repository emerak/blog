class Post < ApplicationRecord
  extend Mobility
  translates :title, type: :string
  translates :content, type: :text

  validates :title, presence: :true
  validates :content, presence: :true
end
