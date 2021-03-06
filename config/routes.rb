Rails.application.routes.draw do
  
  resources :resumes
  resources :tasks do
    put :sort, on: :collection
  end
  resources :multistep_forms

  get '/form_preview' => "multistep_submissions#multistep_form_preview"
  post '/save_multiplestep_form' => "multistep_submissions#save_multiplestep_form"
  resources :submissions, only: [:index, :show]
    devise_for :users, controllers: {
      sessions: 'users/sessions'
    }
   
  resources :basic_forms do 
    member do 
      get :preview_form
      get :submissions
      get :submission_data_to_csv
    end
    collection do 
      post :collect_user_response
    end
    put :sort_blocks, on: :collection
    put :sort_multiple_choices, on: :collection
    put :sort_checkbox_questions, on: :collection
    put :sort_dropdowns, on: :collection
  end
  resources :custom_forms
  resources :feedback_forms
  root 'home#index'

  resources :forms

  get '/dropdown_conditional_block' => "condition_levels#dropdown_conditional_block"
  get '/form_block_conditional_block' => "condition_levels#form_block_conditional_block"
  get '/mcq_conditional_block' => "condition_levels#mcq_conditional_block"
  get '/checkbox_conditional_block' => "condition_levels#checkbox_conditional_block"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
