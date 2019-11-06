class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to @post
    else
      flash[:errors] = @post.errors.full_messages.to_sentence
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      flash[:errors] = @post.errors.full_messages.to_sentence
      render :edit
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
