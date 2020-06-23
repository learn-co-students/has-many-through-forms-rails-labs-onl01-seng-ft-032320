class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])

    @posts = []

    @user.comments.each do |comment|
      if !@posts.include?(Post.find_by(id: comment.post.id))
      @posts << Post.find_by(id: comment.post.id)
      end
    end

  end

end
