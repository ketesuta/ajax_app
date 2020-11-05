class PostsController < ApplicationController

  def index #indexアクション
    @posts = Post.all #一番目のレコードを@postに代入
  end

  def new
    
  end

  def create
    Post.create(content: params[:content])
  end
end
