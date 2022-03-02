class EstatusesController < ApplicationController
  before_action :set_estatus, only: %i[ show edit update destroy ]

  # GET /estatuses or /estatuses.json
  def index
    @estatuses = Estatus.all
  end

  # GET /estatuses/1 or /estatuses/1.json
  def show
  end

  # GET /estatuses/new
  def new
    @estatus = Estatus.new
  end

  # GET /estatuses/1/edit
  def edit
  end

  # POST /estatuses or /estatuses.json
  def create
    @estatus = Estatus.new(estatus_params)

    respond_to do |format|
      if @estatus.save
        format.html { redirect_to estatus_url(@estatus), notice: "Estatus was successfully created." }
        format.json { render :show, status: :created, location: @estatus }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @estatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estatuses/1 or /estatuses/1.json
  def update
    respond_to do |format|
      if @estatus.update(estatus_params)
        format.html { redirect_to estatus_url(@estatus), notice: "Estatus was successfully updated." }
        format.json { render :show, status: :ok, location: @estatus }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @estatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estatuses/1 or /estatuses/1.json
  def destroy
    @estatus.destroy

    respond_to do |format|
      format.html { redirect_to estatuses_url, notice: "Estatus was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estatus
      @estatus = Estatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estatus_params
      params.require(:estatus).permit(:name)
    end
end
