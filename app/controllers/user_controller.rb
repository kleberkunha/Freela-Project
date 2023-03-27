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

    @na_imprensa = NaImprensa.new
    @na_imprensas = NaImprensa.all

    @parceiro = Parceiro.new
    @parceiros = Parceiro.all

    @user = User.find_by(email: "teste@teste.com")
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_index_path
      flash[:notice] = "Your profile has been updated."
    else
      redirect_to user_index_path
      flash[:error] = "ERROR !!!"
    end
  end

  private

  def user_params
    params.require(:user).permit(
      :full_name,
      :phone,
      :description,
      :home_main_text,
      :email
    )
  end
end
