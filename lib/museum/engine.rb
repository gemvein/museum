module Museum
  class Engine < Rails::Engine
    engine_name "museum"
    isolate_namespace Museum
  end 
end