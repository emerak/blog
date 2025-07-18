class PostsController < ApplicationController
  before_action :product, only: %i[show edit update destroy]
  def index
    @posts = Post.all

    render json: @posts
  end

  def show
    render json: @post
  end

  def new
    @post = Post.new
    render json: @post
  end

  def edit
    render json: @post
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      render json: @post, status: :created, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def update
    if @post.update(post_params)
      render json: @post, status: :ok, location: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @post.destroy
      render json: @post, status: :ok, location: posts_path
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  def product
    @post = Post.find(params[:id])
  end
end
