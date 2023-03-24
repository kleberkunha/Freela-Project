class NaImprensasController < ApplicationController
  before_action :set_na_imprensa, only: %i[show edit update destroy]

  # GET /na_imprensas or /na_imprensas.json
  def index
    @na_imprensas = NaImprensa.all
  end

  # GET /na_imprensas/1 or /na_imprensas/1.json
  def show
  end

  # GET /na_imprensas/new
  def new
    @na_imprensa = NaImprensa.new
  end

  # GET /na_imprensas/1/edit
  def edit
  end

  # POST /na_imprensas or /na_imprensas.json
  def create
    @na_imprensa = NaImprensa.new(na_imprensa_params)
    @na_imprensa.user_id = current_user.id

    respond_to do |format|
      if @na_imprensa.save
        format.html do
          redirect_to user_index_path,
                      notice: "Na imprensa was successfully created."
        end
        format.json { render :show, status: :created, location: @na_imprensa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json do
          render json: @na_imprensa.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /na_imprensas/1 or /na_imprensas/1.json
  def update
    respond_to do |format|
      if @na_imprensa.update(na_imprensa_params)
        format.html do
          redirect_to user_index_path,
                      notice: "Na imprensa was successfully updated."
        end
        format.json { render :show, status: :ok, location: @na_imprensa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json do
          render json: @na_imprensa.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # DELETE /na_imprensas/1 or /na_imprensas/1.json
  def destroy
    @na_imprensa.destroy

    respond_to do |format|
      format.html do
        redirect_to user_index_path,
                    notice: "Na imprensa was successfully destroyed."
      end
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_na_imprensa
    @na_imprensa = NaImprensa.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def na_imprensa_params
    params.require(:na_imprensa).permit(:title, :description, :user_id)
  end
end
