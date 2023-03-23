class NaImprensasController < ApplicationController
  before_action :set_na_imprensa, only: %i[ show edit update destroy ]

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

    respond_to do |format|
      if @na_imprensa.save
        format.html { redirect_to na_imprensa_url(@na_imprensa), notice: "Na imprensa was successfully created." }
        format.json { render :show, status: :created, location: @na_imprensa }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @na_imprensa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /na_imprensas/1 or /na_imprensas/1.json
  def update
    respond_to do |format|
      if @na_imprensa.update(na_imprensa_params)
        format.html { redirect_to na_imprensa_url(@na_imprensa), notice: "Na imprensa was successfully updated." }
        format.json { render :show, status: :ok, location: @na_imprensa }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @na_imprensa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /na_imprensas/1 or /na_imprensas/1.json
  def destroy
    @na_imprensa.destroy

    respond_to do |format|
      format.html { redirect_to na_imprensas_url, notice: "Na imprensa was successfully destroyed." }
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
      params.require(:na_imprensa).permit(:title, :description)
    end
end
