class ValorParametrosController < ApplicationController
  before_action :set_valor_parametro, only: [:show, :edit, :update, :destroy]
  require 'pp'
  # GET /valor_parametros
  # GET /valor_parametros.json
  def index
      @sw=params[:sw]
       @valor_parametros=ValorParametro.where("parametro_id = ?",params[:id])

      # @valor_parametros = ValorParametro.all

    render layout: "application1"

  end

  # GET /valor_parametros/1
  # GET /valor_parametros/1.json
  def show
     render layout: "application1"
  end

  # GET /valor_parametros/new
  def new
    @valor_parametro = ValorParametro.new
    render layout: "application1"

  end

  # GET /valor_parametros/1/edit
  def edit
     render layout: "application1"
  end

  # POST /valor_parametros
  # POST /valor_parametros.json
  def create
    @valor_parametro = ValorParametro.new(valor_parametro_params)

    respond_to do |format|
      if @valor_parametro.save
        format.html { redirect_to @valor_parametro, notice: 'Valor parametro was successfully created.' }
        format.json { render :show, status: :created, location: @valor_parametro }
      else
        format.html { render :new }
        format.json { render json: @valor_parametro.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /valor_parametros/1
  # PATCH/PUT /valor_parametros/1.json
  def update
    respond_to do |format|
      if @valor_parametro.update(valor_parametro_params)
        format.html { redirect_to @valor_parametro, notice: 'Valor parametro was successfully updated.' }
        format.json { render :show, status: :ok, location: @valor_parametro }
      else
        format.html { render :edit }
        format.json { render json: @valor_parametro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /valor_parametros/1
  # DELETE /valor_parametros/1.json
  def destroy
    @valor_parametro.destroy
    respond_to do |format|
      format.html { redirect_to valor_parametros_url, notice: 'Valor parametro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valor_parametro
      @valor_parametro = ValorParametro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def valor_parametro_params
      params.require(:valor_parametro).permit(:parametro_id, :valor, :orden, :estadoValorParametro, :eliminado)
    end
end
