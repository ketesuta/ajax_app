class PostsController < ApplicationController

  def index #indexアクション
    @posts = Post.all.order(id: "DESC")
  end

  def create
    Post.create(content: params[:content])
  end

  def checked
    post = Post.find(params[:id])
    if post.checked
      post.ubdate(checked: false)
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: { post: item }
  end
end
