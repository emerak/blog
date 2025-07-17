class Post < ApplicationRecord
  extend Mobility
  translates :title, type: :string
  translates :content, type: :text
end
