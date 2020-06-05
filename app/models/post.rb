class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  
  def categories_attributes=(cat_atts)
    cat_atts.values.each do |c|
      if c[:name].present?
        category = Category.find_or_create_by(c)
        self.categories << category
      end
    end
  end

end
