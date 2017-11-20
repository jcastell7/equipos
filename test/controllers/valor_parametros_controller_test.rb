require 'test_helper'

class ValorParametrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valor_parametro = valor_parametros(:one)
  end

  test "should get index" do
    get valor_parametros_url
    assert_response :success
  end

  test "should get new" do
    get new_valor_parametro_url
    assert_response :success
  end

  test "should create valor_parametro" do
    assert_difference('ValorParametro.count') do
      post valor_parametros_url, params: { valor_parametro: { eliminado: @valor_parametro.eliminado, estadoValorParametro: @valor_parametro.estadoValorParametro, orden: @valor_parametro.orden, parametroId: @valor_parametro.parametroId, valor: @valor_parametro.valor } }
    end

    assert_redirected_to valor_parametro_url(ValorParametro.last)
  end

  test "should show valor_parametro" do
    get valor_parametro_url(@valor_parametro)
    assert_response :success
  end

  test "should get edit" do
    get edit_valor_parametro_url(@valor_parametro)
    assert_response :success
  end

  test "should update valor_parametro" do
    patch valor_parametro_url(@valor_parametro), params: { valor_parametro: { eliminado: @valor_parametro.eliminado, estadoValorParametro: @valor_parametro.estadoValorParametro, orden: @valor_parametro.orden, parametroId: @valor_parametro.parametroId, valor: @valor_parametro.valor } }
    assert_redirected_to valor_parametro_url(@valor_parametro)
  end

  test "should destroy valor_parametro" do
    assert_difference('ValorParametro.count', -1) do
      delete valor_parametro_url(@valor_parametro)
    end

    assert_redirected_to valor_parametros_url
  end
end
