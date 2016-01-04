Rails.application.routes.draw do
  post 'contact', to: 'contacts#process_formgit'
  root to: 'visitors#new'
end
