AndreSantosPt::Application.routes.draw do
  root :to => "home#index"
  match "/" => "home#index"
  match "/404", :to => "errors#error_404"
end
