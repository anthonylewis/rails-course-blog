class Post < ActiveRecord::Base
  validates :body, :presence => true
  validates :title, :presence => true,
    :uniqueness => true,
    :length => { :within => 1..20 },
    :exclusion => { :in => ["Title", "Post"] }
  has_many :comments
end
