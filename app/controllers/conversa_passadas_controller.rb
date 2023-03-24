class ConversaPassadasController < ApplicationController
  before_action :set_conversa_passada, only: %i[show edit update destroy]

  # GET /conversa_passadas or /conversa_passadas.json
  def index
    @conversa_passadas = ConversaPassada.all
  end

  # GET /conversa_passadas/1 or /conversa_passadas/1.json
  def show
  end

  # GET /conversa_passadas/new
  def new
    @conversa_passada = ConversaPassada.new
  end

  # GET /conversa_passadas/1/edit
  def edit
  end

  # POST /conversa_passadas or /conversa_passadas.json
  def create
    @conversa_passada = ConversaPassada.new(conversa_passada_params)
    @conversa_passada.user_id = current_user.id

    respond_to do |format|
      if @conversa_passada.save
        format.html do
          redirect_to user_index_path,
                      notice: "Conversa passada was successfully created."
        end
        format.json do
          render :show, status: :created, location: @conversa_passada
        end
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @conversa_passada.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /conversa_passadas/1 or /conversa_passadas/1.json
  def update
    respond_to do |format|
      if @conversa_passada.update(conversa_passada_params)
        format.html do
          redirect_to user_index_path,
                      notice: "Conversa passada was successfully updated."
        end
        format.json { render :show, status: :ok, location: @conversa_passada }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @conversa_passada.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /conversa_passadas/1 or /conversa_passadas/1.json
  def destroy
    @conversa_passada.destroy

    respond_to do |format|
      format.html do
        redirect_to user_index_path,
                    notice: "Conversa passada was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_conversa_passada
    @conversa_passada = ConversaPassada.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def conversa_passada_params
    params.require(:conversa_passada).permit(
      :title,
      :description,
      :created_by,
      :user_id
    )
  end
end
