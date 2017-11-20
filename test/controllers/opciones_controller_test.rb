require 'test_helper'

class OpcionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @opcione = opciones(:one)
  end

  test "should get index" do
    get opciones_url
    assert_response :success
  end

  test "should get new" do
    get new_opcione_url
    assert_response :success
  end

  test "should create opcione" do
    assert_difference('Opcione.count') do
      post opciones_url, params: { opcione: { controller: @opcione.controller, eliminado: @opcione.eliminado, eshoja: @opcione.eshoja, estadoopcion: @opcione.estadoopcion, idpadre: @opcione.idpadre, opcion: @opcione.opcion, orden: @opcione.orden, url: @opcione.url } }
    end

    assert_redirected_to opcione_url(Opcione.last)
  end

  test "should show opcione" do
    get opcione_url(@opcione)
    assert_response :success
  end

  test "should get edit" do
    get edit_opcione_url(@opcione)
    assert_response :success
  end

  test "should update opcione" do
    patch opcione_url(@opcione), params: { opcione: { controller: @opcione.controller, eliminado: @opcione.eliminado, eshoja: @opcione.eshoja, estadoopcion: @opcione.estadoopcion, idpadre: @opcione.idpadre, opcion: @opcione.opcion, orden: @opcione.orden, url: @opcione.url } }
    assert_redirected_to opcione_url(@opcione)
  end

  test "should destroy opcione" do
    assert_difference('Opcione.count', -1) do
      delete opcione_url(@opcione)
    end

    assert_redirected_to opciones_url
  end
end
