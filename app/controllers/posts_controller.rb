class PostsController < ApplicationController
  PER_PAGE = 10

  def index
    @posts = Post.order(id: :DESC).page(params[:page]).per(PER_PAGE)
    @post = Post.new
  end

  def create
    post = Post.create!(post_params)
    redirect_to root_path
  end

  private

  def post_params
    params.require(:post).permit(:body)
  end
end
