class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  # accepts_nested_attributes_for :user

  def user_attributes=(user_atts)
    user_atts.values.each do |u|
      if u.present?
        user = User.find_or_create_by(username: u)
        self.user = user
      end
    end
  end
end
