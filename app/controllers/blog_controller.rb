class BlogController < ApplicationController
  def index
    @posts = Post.all

    @link_externos = LinkExterno.all
  end
end
