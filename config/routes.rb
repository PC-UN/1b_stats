Rails.application.routes.draw do
  get 'db_status', to: 'stats_handler#db_status'
  
  get 'count_per_city', to: 'stats_handler#disposal_count_per_city', as: 'disposal_count_per_city'
  get 'count_per_city_sorted', to: 'stats_handler#disposal_count_per_city_sorted'
  
  get 'count_per_department', to: 'stats_handler#disposal_count_per_department', as: 'disposal_count_per_department'
  get 'count_per_department_sorted', to: 'stats_handler#disposal_count_per_department_sorted'
  
  get 'count_per_residue_name', to: 'stats_handler#disposal_count_per_residue_name', as: 'disposal_count_per_residue_name'
  get 'count_per_residue_name_sorted', to: 'stats_handler#disposal_count_per_residue_name_sorted'
  
  get 'count_per_residue_type', to: 'stats_handler#disposal_count_per_residue_type', as: 'disposal_count_per_residue_type'
  get 'count_per_residue_type_sorted', to: 'stats_handler#disposal_count_per_residue_type_sorted'
  
  get 'count_per_program_name', to: 'stats_handler#disposal_count_per_program_name', as: 'disposal_count_per_program_name'
  get 'count_per_program_name_sorted', to: 'stats_handler#disposal_count_per_program_name_sorted'
  
  get 'people_per_disposal', to: 'stats_handler#people_per_disposal', as: 'people_per_disposal'
  get 'people_per_disposal_sorted', to: 'stats_handler#people_per_disposal_sorted', as: 'people_per_disposal_sorted'

  resources :disposal_points
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
