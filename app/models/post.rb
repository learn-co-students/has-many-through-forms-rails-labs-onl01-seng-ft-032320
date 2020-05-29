class Post < ActiveRecord::Base
  has_many :post_categories
  has_many :categories, through: :post_categories
  has_many :comments
  has_many :users, through: :comments

  
  
  def categories_attributes=(cat_att)
    cat_att.each do |key,att|
      unless att[:name].empty?
        category = Category.find_or_create_by(att)
        self.categories << category
      end
    end
  end

  accepts_nested_attributes_for :comments
  accepts_nested_attributes_for :categories
end
