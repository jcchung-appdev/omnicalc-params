class SquareController < ApplicationController
    def square
        @num = params.fetch("num").to_f
        @r = @num**2
        
        render("square_templates/square.html.erb")
    end
    
    def square_form
        render("square_templates/square_form.html.erb")
    end
end