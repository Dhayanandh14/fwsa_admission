Rails.application.routes.draw do
  root to: 'applicants#index'
  get 'applicant' => 'applicants#show'
  get 'details' => 'details#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
