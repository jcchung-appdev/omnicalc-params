class RandomController < ApplicationController
    def random
        @min = params.fetch('min').to_f
        @max = params.fetch('max').to_f
        
        @r = rand(@min..@max)
        
        render("random_templates/random.html.erb")
    end
    
    def random_form
        render("random_templates/random_form.html.erb")
    end
end