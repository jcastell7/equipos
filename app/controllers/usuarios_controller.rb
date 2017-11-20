
class UsuariosController < BaseController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]
  
  include Servicios
  # GET /usuarios
  # GET /usuarios.json
  require "pp"
  def index
    @todos = Usuario.all   
    #pp @todos
    @usuarios = @todos.map do |u|
       {
         "id"            => u.id,
         "usuario"       => u.usuario,               
         "EstadoUsuario" => TraerValorParametro(u.idestadousuario),
         "Rol"           => TraerValorParametro(u.idrol)
        }
      end
      #pp @usuarios
     
  end

  # GET /usuarios/1
  # GET /usuarios/1.json
  def show
    @rol =TraerValorParametro(@usuario.idrol)
    @estado=TraerValorParametro(@usuario.idestadousuario)
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
    @roles = TraerParametros(2)
    @estados = TraerParametros(1)

  end

  # GET /usuarios/1/edit
  def edit    
    @roles = TraerParametros(2)
    @estados = TraerParametros(1)
  end

  # POST /usuarios
  # POST /usuarios.json
  def create
    @usuario = Usuario.new(usuario_params)
    
    respond_to do |format|
      if @usuario.save
        format.html { redirect_to @usuario, notice: 'Usuario creado exitosamente' }
        format.json { render :show, status: :created, location: @usuario }
      else
        format.html { render :new }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /usuarios/1
  # PATCH/PUT /usuarios/1.json
  def update 
  
    respond_to do |format|
      if @usuario.update(usuario_params)
        format.html { redirect_to @usuario, notice: 'Usuario Actualizado' }
        format.json { render :show, status: :ok, location: @usuario }
      else
        format.html { render :edit }
        format.json { render json: @usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usuarios/1
  # DELETE /usuarios/1.json
  def destroy
    
    @usuario.destroy
    respond_to do |format|
      format.html { redirect_to usuarios_url, notice: 'Usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
     
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def usuario_params                    
         params.require(:usuario).permit(:usuario, :password, :idrol, :idestadousuario)       
    end
end
