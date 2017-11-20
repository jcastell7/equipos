class RolOpcionOperacionesController <  BaseController
  before_action :set_rol_opcion_operacione, only: [:show, :edit, :update, :destroy]

  include Servicios
  # GET /rol_opcion_operaciones
  # GET /rol_opcion_operaciones.json
  def index
    @todos = RolOpcionOperacione.all.order('idrol,Opcione_id,idoperacion')
     @regs = @todos.map do |r|
       {
         "id"            => r.id,
         "rol"           => TraerValorParametro(r.idrol),
         "opcion"        => TraerOpcion(r.opcione_id),    
         "idopcion"      => r.opcione_id,          
         "operacion"     => TraerValorParametro(r.idoperacion),
         "estado"        => r.estadorolop
        }
      end
      
  end

  # GET /rol_opcion_operaciones/1
  # GET /rol_opcion_operaciones/1.json
  def show

     @reg = {
         "id"            => @rol_opcion_operacione.id,
         "rol"           => TraerValorParametro(@rol_opcion_operacione.idrol),
         "opcion"        => TraerOpcion(@rol_opcion_operacione.opcione_id),              
         "operacion"     => TraerValorParametro(@rol_opcion_operacione.idoperacion),
         "estado"        => @rol_opcion_operacione.estadorolop
        }

        pp "reg=",@reg
       
  end
  # GET /rol_opcion_operaciones/new
  def new
    @rol_opcion_operacione = RolOpcionOperacione.new
    set_variables_g

  end

  # GET /rol_opcion_operaciones/1/edit
  def edit
    set_variables_g
  end

  # POST /rol_opcion_operaciones
  # POST /rol_opcion_operaciones.json
  def create
    @rol_opcion_operacione = RolOpcionOperacione.new(rol_opcion_operacione_params)

    respond_to do |format|
      if @rol_opcion_operacione.save
        format.html { redirect_to @rol_opcion_operacione, notice: 'Acceso creado eitosamente' }
        format.json { render :show, status: :created, location: @rol_opcion_operacione }
      else
        format.html { render :new }
        format.json { render json: @rol_opcion_operacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rol_opcion_operaciones/1
  # PATCH/PUT /rol_opcion_operaciones/1.json
  def update
    respond_to do |format|
      if @rol_opcion_operacione.update(rol_opcion_operacione_params)
        format.html { redirect_to @rol_opcion_operacione, notice: 'Acceso actualizado exitosamente' }
        format.json { render :show, status: :ok, location: @rol_opcion_operacione }
      else
        format.html { render :edit }
        format.json { render json: @rol_opcion_operacione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rol_opcion_operaciones/1
  # DELETE /rol_opcion_operaciones/1.json
  def destroy
    @rol_opcion_operacione.destroy
    respond_to do |format|
      format.html { redirect_to rol_opcion_operaciones_url, notice: 'Acceso borrado exitosamente.' }
      format.json { head :no_content }
    end
  end

  def set_variables_g
     @roles = TraerParametros(2)
     @operaciones=TraerParametros(3)     
     @opciones=Opcione.select("id,opcion").where("estadoopcion='A'")
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rol_opcion_operacione
      @rol_opcion_operacione = RolOpcionOperacione.find(params[:id])
     end 

    # Never trust parameters from the scary internet, only allow the white list through.
    def rol_opcion_operacione_params
      params.require(:rol_opcion_operacione).permit(:usuario_id, :opcione_id, :idrol, :idoperacion, :eliminado, :estadorolop)
    end
end
