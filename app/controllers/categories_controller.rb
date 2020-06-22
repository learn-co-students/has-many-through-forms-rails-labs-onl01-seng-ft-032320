class CategoriesController < ApplicationController

  def show
    @category = Category.find(params[:id])
    
    @posts = []

    PostCategory.all.each do |pc|
      if pc.category_id == @category.id
        @posts << Post.find_by(id: pc.post_id)
      end
    end

  end
end
