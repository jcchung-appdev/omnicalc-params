class PaymentController < ApplicationController
    def payment
        @apr = params.fetch("apr").to_f 
        @yrs = params.fetch("yrs").to_f
        @pv = params.fetch("principal").to_f
        
        apr = @apr / 100 / 12
        
        @pmt = (apr * @pv) / (1-(1+apr)**(-1*@yrs*12))
        
        render("payment_templates/payment.html.erb")
    end
    
    def payment_form
        render("payment_templates/payment_form.html.erb")
    end
end