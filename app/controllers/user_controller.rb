class UserController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all

    @conversa_passada = ConversaPassada.new
    @conversa_passadas = ConversaPassada.all

    @colega_tradutor = ColegaTradutor.new
    @colega_tradutors = ColegaTradutor.all

    @link_externo = LinkExterno.new
    @link_externos = LinkExterno.all
  end
end
