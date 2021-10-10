class ContinentesController < ApplicationController
  before_action :set_continente, only: %i[ show edit update destroy ]

  # GET /continentes or /continentes.json
  def index
    @continentes = Continente.all
  end

  # GET /continentes/1 or /continentes/1.json
  def show
  end

  # GET /continentes/new
  def new
    @continente = Continente.new
  end

  # GET /continentes/1/edit
  def edit
  end

  # POST /continentes or /continentes.json
  def create
    @continente = Continente.new(continente_params)

    respond_to do |format|
      if @continente.save
        format.html { redirect_to @continente, notice: "Continente was successfully created." }
        format.json { render :show, status: :created, location: @continente }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @continente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /continentes/1 or /continentes/1.json
  def update
    respond_to do |format|
      if @continente.update(continente_params)
        format.html { redirect_to @continente, notice: "Continente was successfully updated." }
        format.json { render :show, status: :ok, location: @continente }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @continente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /continentes/1 or /continentes/1.json
  def destroy
    @continente.destroy
    respond_to do |format|
      format.html { redirect_to continentes_url, notice: "Continente was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_continente
      @continente = Continente.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def continente_params
      params.require(:continente).permit(:name)
    end
end
