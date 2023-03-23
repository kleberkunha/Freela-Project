class LinkExternosController < ApplicationController
  before_action :set_link_externo, only: %i[ show edit update destroy ]

  # GET /link_externos or /link_externos.json
  def index
    @link_externos = LinkExterno.all
  end

  # GET /link_externos/1 or /link_externos/1.json
  def show
  end

  # GET /link_externos/new
  def new
    @link_externo = LinkExterno.new
  end

  # GET /link_externos/1/edit
  def edit
  end

  # POST /link_externos or /link_externos.json
  def create
    @link_externo = LinkExterno.new(link_externo_params)

    respond_to do |format|
      if @link_externo.save
        format.html { redirect_to link_externo_url(@link_externo), notice: "Link externo was successfully created." }
        format.json { render :show, status: :created, location: @link_externo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @link_externo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /link_externos/1 or /link_externos/1.json
  def update
    respond_to do |format|
      if @link_externo.update(link_externo_params)
        format.html { redirect_to link_externo_url(@link_externo), notice: "Link externo was successfully updated." }
        format.json { render :show, status: :ok, location: @link_externo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @link_externo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /link_externos/1 or /link_externos/1.json
  def destroy
    @link_externo.destroy

    respond_to do |format|
      format.html { redirect_to link_externos_url, notice: "Link externo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link_externo
      @link_externo = LinkExterno.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def link_externo_params
      params.require(:link_externo).permit(:title, :url_page)
    end
end
