class FlexibleController < ApplicationController
    def flexible_square
        @num = params.fetch("num").to_i
        @r = @num**2
        
        render("flexible_templates/flexible_square.html.erb")
    end
    
    def flexible_root
        @num = params.fetch("num").to_i
        @r = Math.sqrt(@num)
        
        render("flexible_templates/flexible_root.html.erb")
    end 
    
    def flexible_payment
        @apr = params.fetch("1").to_f / 100
        @yrs = params.fetch("2").to_i
        @pv = params.fetch("3").to_i
        
        apr = @apr / 100 / 12
        
        @pmt = (apr * @pv) / (1-(1+apr)**(-1*@yrs*12))
        
        render("flexible_templates/flexible_payment.html.erb")
    end
    
    def flexible_random
        @min = params.fetch('min').to_i
        @max = params.fetch('max').to_i
        
        @r = rand(@min..@max)
        
        render("flexible_templates/flexible_random.html.erb")
    end
end