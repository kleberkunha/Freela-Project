class HomeController < ApplicationController
  def index
    @text_home = User.find_by(email: "teste@teste.com")

    @books = Book.all
  end
end
