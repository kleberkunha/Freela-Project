class ColegaTradutorsController < ApplicationController
  before_action :set_colega_tradutor, only: %i[ show edit update destroy ]

  # GET /colega_tradutors or /colega_tradutors.json
  def index
    @colega_tradutors = ColegaTradutor.all
  end

  # GET /colega_tradutors/1 or /colega_tradutors/1.json
  def show
  end

  # GET /colega_tradutors/new
  def new
    @colega_tradutor = ColegaTradutor.new
  end

  # GET /colega_tradutors/1/edit
  def edit
  end

  # POST /colega_tradutors or /colega_tradutors.json
  def create
    @colega_tradutor = ColegaTradutor.new(colega_tradutor_params)

    respond_to do |format|
      if @colega_tradutor.save
        format.html { redirect_to colega_tradutor_url(@colega_tradutor), notice: "Colega tradutor was successfully created." }
        format.json { render :show, status: :created, location: @colega_tradutor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @colega_tradutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colega_tradutors/1 or /colega_tradutors/1.json
  def update
    respond_to do |format|
      if @colega_tradutor.update(colega_tradutor_params)
        format.html { redirect_to colega_tradutor_url(@colega_tradutor), notice: "Colega tradutor was successfully updated." }
        format.json { render :show, status: :ok, location: @colega_tradutor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @colega_tradutor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colega_tradutors/1 or /colega_tradutors/1.json
  def destroy
    @colega_tradutor.destroy

    respond_to do |format|
      format.html { redirect_to colega_tradutors_url, notice: "Colega tradutor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colega_tradutor
      @colega_tradutor = ColegaTradutor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def colega_tradutor_params
      params.require(:colega_tradutor).permit(:name, :url_page)
    end
end
