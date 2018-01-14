class PostsController < ApplicationController
  def index; end

  def new; end

  def create
    @post = Post.new(
      situation: params[:situation],
      goods: params[:goods],
      comment: params[:comment]
    )
    # Paperclipを用いた画像の投稿
    if params[:post_image]
      @post.image = params[:post_image]
    end
    @post.save
    redirect_to('/home/top')
  end
end
