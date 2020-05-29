class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  def user_attributes=(user)
    binding.pry
  end

  accepts_nested_attributes_for :user
end
