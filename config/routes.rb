Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get('/square/:square', { :controller => 'calculations', :action => 'square_it' })
  get("/square_root/:id", { :controller => "calculations", :action => "square_root" })
  get("/random/:minimo/:maximo", { :controller => "calculations", :action => "random_min_max" })
  get("/payment/:interest_rate/:years/:principal", { :controller => "calculations", :action => "payment" })

end
