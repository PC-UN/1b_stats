Rails.application.routes.draw do
  get 'stats_handler/db_status'

  get 'stats_handler/disposal_count_per_city'

  get 'stats_handler/disposal_count_per_department'

  get 'stats_handler/disposal_count_per_residue_name'

  get 'stats_handler/disposal_count_per_residue_type'

  get 'stats_handler/disposal_count_per_program_name'

  resources :disposal_points
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
