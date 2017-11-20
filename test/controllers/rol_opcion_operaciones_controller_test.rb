require 'test_helper'

class RolOpcionOperacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rol_opcion_operacione = rol_opcion_operaciones(:one)
  end

  test "should get index" do
    get rol_opcion_operaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_rol_opcion_operacione_url
    assert_response :success
  end

  test "should create rol_opcion_operacione" do
    assert_difference('RolOpcionOperacione.count') do
      post rol_opcion_operaciones_url, params: { rol_opcion_operacione: { eliminado: @rol_opcion_operacione.eliminado, estadorolop: @rol_opcion_operacione.estadorolop, idoperacion: @rol_opcion_operacione.idoperacion, idrol: @rol_opcion_operacione.idrol } }
    end

    assert_redirected_to rol_opcion_operacione_url(RolOpcionOperacione.last)
  end

  test "should show rol_opcion_operacione" do
    get rol_opcion_operacione_url(@rol_opcion_operacione)
    assert_response :success
  end

  test "should get edit" do
    get edit_rol_opcion_operacione_url(@rol_opcion_operacione)
    assert_response :success
  end

  test "should update rol_opcion_operacione" do
    patch rol_opcion_operacione_url(@rol_opcion_operacione), params: { rol_opcion_operacione: { eliminado: @rol_opcion_operacione.eliminado, estadorolop: @rol_opcion_operacione.estadorolop, idoperacion: @rol_opcion_operacione.idoperacion, idrol: @rol_opcion_operacione.idrol } }
    assert_redirected_to rol_opcion_operacione_url(@rol_opcion_operacione)
  end

  test "should destroy rol_opcion_operacione" do
    assert_difference('RolOpcionOperacione.count', -1) do
      delete rol_opcion_operacione_url(@rol_opcion_operacione)
    end

    assert_redirected_to rol_opcion_operaciones_url
  end
end
