Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #Part I: Flexible Routes
  get("/flexible/square/:num",          { :controller => "flexible", :action => "flexible_square"  })
  get("/flexible/square_root/:num",     { :controller => "flexible", :action => "flexible_root"    })
  get("/flexible/payment/:1/:2/:3",     { :controller => "flexible", :action => "flexible_payment" })
  get("/flexible/random/:min/:max",     { :controller => "flexible", :action => "flexible_random"  })
  
  #Part II: Forms
  get("/square/new",                    { :controller => "square",    :action => "square_form"     })
  get("/square/results",                { :controller => "square",    :action => "square"          })
  
  get("/square_root/new",               { :controller => "root",      :action => "root_form"       })
  get("/square_root/results",           { :controller => "root",      :action => "root"            })  
  
  get("/payment/new",                   { :controller => "payment",   :action => "payment_form"    })
  get("/payment/results",               { :controller => "payment",   :action => "payment"         })  
  
  get("/random/new",                    { :controller => "random",    :action => "random_form"     })
  get("/random/results",                { :controller => "random",    :action => "random"          })  
  
  #Part III: More Practice
  get("/word_count/new",                { :controller => "word_count", :action => "word_count_form" })
  get("/word_count/results",            { :controller => "word_count", :action => "word_count"      })
  
  get("/descriptive_stats/new",                     { :controller => "stats", :action => "stats_form"           })
  get("/descriptive_stats/results",                 { :controller => "stats", :action => "stats"                })
end
