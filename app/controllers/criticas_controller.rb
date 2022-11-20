class CriticasController < ApplicationController
  before_action :set_critica, only: %i[ show edit update destroy ]

  # GET /criticas or /criticas.json
  def index
    @criticas = Critica.all
  end

  # GET /criticas/1 or /criticas/1.json
  def show
  end

  # GET /criticas/new
  def new
    @critica = Critica.new(comentario :text)
  end

  # GET /criticas/1/edit
  def edit
  end

  # POST /criticas or /criticas.json
  def create
    @critica = Critica.new(critica_params)

    respond_to do |format|
      if @critica.save
        format.html { redirect_to critica_url(@critica), notice: "Critica was successfully created." }
        format.json { render :show, status: :created, location: @critica }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @critica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /criticas/1 or /criticas/1.json
  def update
    respond_to do |format|
      if @critica.update(critica_params)
        format.html { redirect_to critica_url(@critica), notice: "Critica was successfully updated." }
        format.json { render :show, status: :ok, location: @critica }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @critica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /criticas/1 or /criticas/1.json
  def destroy
    @critica.destroy

    respond_to do |format|
      format.html { redirect_to criticas_url, notice: "Critica was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_critica
      @critica = Critica.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def critica_params
      params.require(:critica).permit(:comentario, :filme)
    end
end
