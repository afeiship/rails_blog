module RailsBlog
  class Post < ApplicationRecord
    has_many :comments, dependent: :destroy
  end
end
