class HomeController < ApplicationController
  def index
    @text_home = User.find_by(email: "teste@teste.com")

    @books = Book.all

    @link_externos = LinkExterno.all
  end
end
