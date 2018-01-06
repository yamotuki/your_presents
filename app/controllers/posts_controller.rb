class PostsController < ApplicationController
  def index
  end
  def new
  end
  def create
    @post = Post.new(
      situation: params[:situation],
      goods: params[:goods],
      comment: params[:comment]
    )
    # 画像の扱いは carrierWaveと言うGemが楽らしい。とりあえずベーシックな方法でやる。
    if params[:image]
      # save するまではidがnullなのでファイル名はrandomで設定
      require 'securerandom'
      @post.image_name = SecureRandom.hex
      image = params[:image]
      File.binwrite("public/user_images/#{@post.image_name}", image.read)
    end
    @post.save
    redirect_to("/home/top")
  end
end
