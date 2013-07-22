AndreSantosPt::Application.routes.draw do
  match "/" => "home#index"
  match "/404", :to => "errors#error_404"
end
