require 'test_helper'

class ConsumosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consumo = consumos(:one)
  end

  test "should get index" do
    get consumos_url
    assert_response :success
  end

  test "should get new" do
    get new_consumo_url
    assert_response :success
  end

  test "should create consumo" do
    assert_difference('Consumo.count') do
      post consumos_url, params: { consumo: { cant: @consumo.cant, comentario: @consumo.comentario, eliminado: @consumo.eliminado, equipo_id: @consumo.equipo_id, fecha: @consumo.fecha, idcategoriaconsumo: @consumo.idcategoriaconsumo, idestadoconsumo: @consumo.idestadoconsumo, idrubro: @consumo.idrubro, idtipoconsumo: @consumo.idtipoconsumo, idunidadmedida: @consumo.idunidadmedida, kilometraje: @consumo.kilometraje, numfactura: @consumo.numfactura, persona_id: @consumo.persona_id, valor: @consumo.valor } }
    end

    assert_redirected_to consumo_url(Consumo.last)
  end

  test "should show consumo" do
    get consumo_url(@consumo)
    assert_response :success
  end

  test "should get edit" do
    get edit_consumo_url(@consumo)
    assert_response :success
  end

  test "should update consumo" do
    patch consumo_url(@consumo), params: { consumo: { cant: @consumo.cant, comentario: @consumo.comentario, eliminado: @consumo.eliminado, equipo_id: @consumo.equipo_id, fecha: @consumo.fecha, idcategoriaconsumo: @consumo.idcategoriaconsumo, idestadoconsumo: @consumo.idestadoconsumo, idrubro: @consumo.idrubro, idtipoconsumo: @consumo.idtipoconsumo, idunidadmedida: @consumo.idunidadmedida, kilometraje: @consumo.kilometraje, numfactura: @consumo.numfactura, persona_id: @consumo.persona_id, valor: @consumo.valor } }
    assert_redirected_to consumo_url(@consumo)
  end

  test "should destroy consumo" do
    assert_difference('Consumo.count', -1) do
      delete consumo_url(@consumo)
    end

    assert_redirected_to consumos_url
  end
end
