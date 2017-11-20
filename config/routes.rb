Rails.application.routes.draw do

  resources :consumos
  resources :equipos
  resources :anexos
  resources :facturas
  resources :rol_opcion_operaciones
  resources :opciones
  resources :valor_parametros
  resources :usuarios
  root 'inicio#casa'
  resources :parametros
  post '/auth', to:'seguridad#autenticar'
  get '/login', to:'seguridad#login'
  get '/inicio', to:'inicio#casa'
  get '/noacceso', to:'inicio#noacceso'
  get '/logout', to:'seguridad#logout'
  get '/valp/:id', to: "valor_parametros#index"
  get '/consumo/:id', to: "consumos#index"
  get '/anexo/:id/facturas', to: "anexos#index"
  get '/anexo/:id/equipos', to: "anexos#index"
  get '/reportePlaca', to: "equipos#reportePlaca"
  get '/reporteModelo', to: "equipos#reporteModelo"
  get '/reporteSerie', to: "equipos#reporteSerie"
  get '/reporteMarca', to: "equipos#reporteMarca"
  get '/reporte', to: "equipos#reporte"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
