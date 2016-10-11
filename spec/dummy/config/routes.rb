Rails.application.routes.draw do
  mount Museum::Engine => '/museum', :as => 'museum'
end
