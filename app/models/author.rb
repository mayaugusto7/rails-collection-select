class Author < ApplicationRecord
  has_many :posts

  def name_with_initial
    "#{self.first_name} #{self.last_name}"
  end
end
