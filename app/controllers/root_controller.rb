class RootController < ApplicationController
    def root
        @num = params.fetch("num").to_f
        @r = Math.sqrt(@num)
        
        render("root_templates/root.html.erb")
    end 
    
    def root_form
        render("root_templates/root_form.html.erb")
    end
end