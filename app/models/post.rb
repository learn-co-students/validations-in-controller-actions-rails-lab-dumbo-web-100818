class Post < ActiveRecord::Base
  validates :title, presence: true
  # validates_inclusion_of :category, :in => ["Fiction", "Non-Fiction"], :allow_nil => false
  validates :category, inclusion: {in: %w(Fiction Non-Fiction)}
  validates :content, length: {minimum: 100}
end
