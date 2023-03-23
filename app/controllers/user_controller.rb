class UserController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all

    @conversa_passada = ConversaPassada.new
    @conversa_passadas = ConversaPassada.all
  end
end
