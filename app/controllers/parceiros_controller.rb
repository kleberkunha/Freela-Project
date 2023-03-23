class ParceirosController < ApplicationController
  before_action :set_parceiro, only: %i[show edit update destroy]

  # GET /parceiros or /parceiros.json
  def index
    @parceiros = Parceiro.all
  end

  # GET /parceiros/1 or /parceiros/1.json
  def show
  end

  # GET /parceiros/new
  def new
    @parceiro = Parceiro.new
  end

  # GET /parceiros/1/edit
  def edit
  end

  # POST /parceiros or /parceiros.json
  def create
    @parceiro = Parceiro.new(parceiro_params)
    @parceiro.user_id = current_user.id

    respond_to do |format|
      if @parceiro.save
        format.html do
          redirect_to parceiro_url(@parceiro),
                      notice: "Parceiro was successfully created."
        end
        format.json { render :show, status: :created, location: @parceiro }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @parceiro.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /parceiros/1 or /parceiros/1.json
  def update
    respond_to do |format|
      if @parceiro.update(parceiro_params)
        format.html do
          redirect_to parceiro_url(@parceiro),
                      notice: "Parceiro was successfully updated."
        end
        format.json { render :show, status: :ok, location: @parceiro }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @parceiro.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /parceiros/1 or /parceiros/1.json
  def destroy
    @parceiro.destroy

    respond_to do |format|
      format.html do
        redirect_to parceiros_url,
                    notice: "Parceiro was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_parceiro
    @parceiro = Parceiro.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def parceiro_params
    params.require(:parceiro).permit(:name, :url_page, :user_id)
  end
end
