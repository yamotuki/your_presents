class HomeController < ApplicationController
  def top
     @recent_posts = Post.all;
  end
end
