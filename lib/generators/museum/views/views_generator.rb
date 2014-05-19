module Museum
  class ViewsGenerator < Rails::Generators::Base
    source_root File.expand_path('../../../../../app/views/cases', __FILE__)
    require File.expand_path('../../utils', __FILE__)
    include Generators::Utils
    
    # all public methods in here will be run in order

    def add_views
      output "I'm copying the default views into app/views/cases for you.", :magenta
      template "index.html.haml", "app/views/cases/index.html.haml"
      template "show.html.haml", "app/views/cases/show.html.haml"
      template "_widget.html.haml", "app/views/cases/_widget.html.haml"
    end
  end
end