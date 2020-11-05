class PostsController < ApplicationController

  def index #indexアクション
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
  end

end
