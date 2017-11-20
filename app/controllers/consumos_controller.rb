class ConsumosController < ApplicationController
  before_action :set_consumo, only: [:show, :edit, :update, :destroy]

  # GET /consumos
  # GET /consumos.json
  def index
    @consumos = Consumo.where("factura_id = ?",params[:id])
    render layout: "application1"
  end

  # GET /consumos/1
  # GET /consumos/1.json
  def show
    render layout: "application1"
  end

  # GET /consumos/new
  def new
    @consumo = Consumo.new
    render layout: "application1"
  end

  # GET /consumos/1/edit
  def edit
    render layout: "application1"
  end

  # POST /consumos
  # POST /consumos.json
  def create
    @consumo = Consumo.new(consumo_params)

    respond_to do |format|
      if @consumo.save
        format.html { redirect_to @consumo, notice: 'Consumo was successfully created.' }
        format.json { render :show, status: :created, location: @consumo }
      else
        format.html { render :new }
        format.json { render json: @consumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consumos/1
  # PATCH/PUT /consumos/1.json
  def update
    respond_to do |format|
      if @consumo.update(consumo_params)
        format.html { redirect_to @consumo, notice: 'Consumo was successfully updated.' }
        format.json { render :show, status: :ok, location: @consumo }
      else
        format.html { render :edit }
        format.json { render json: @consumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consumos/1
  # DELETE /consumos/1.json
  def destroy
    @consumo.destroy
    respond_to do |format|
      format.html { redirect_to consumos_url, notice: 'Consumo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consumo
      @consumo = Consumo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def consumo_params
      params.require(:consumo).permit(:equipo_id, :persona_id, :fecha, :comentario, :kilometraje, :cant, :numfactura, :idtipoconsumo, :idestadoconsumo, :idcategoriaconsumo, :idunidadmedida, :idrubro, :valor, :eliminado,:factura_id)
    end
end
