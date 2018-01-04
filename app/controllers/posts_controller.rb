class PostsController < ApplicationController
  def index
  end
  def new
  end
  def create
    @post = Post.new(situation: params[:situation], goods: params[:goods], comment: params[:comment])
    @post.save
    redirect_to("/home/top")
  end
end
