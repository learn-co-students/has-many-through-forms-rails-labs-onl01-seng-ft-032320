class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  def categories_attributes=(categories_attributes)
    categories_attributes.values.each do |cat|
      if cat[:name].present?
        category = Category.find_or_create_by(cat)
        if !self.categories.include?(category)
          self.post_categories.build(category: category)
        end
      end
    end
  end

  def fields_blank?
    self.content.epty? || self.user.empty?
  end

end
