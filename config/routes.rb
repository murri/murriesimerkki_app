EsimerkkiApp::Application.routes.draw do
  resources :machine_cover_image_names

  resources :machine_cover_image_uids

  resources :caravan_cover_image_names

  resources :caravan_cover_image_uids

  resources :moto_cover_image_names

  resources :moto_cover_image_uids

  resources :car_cover_image_names

  resources :car_cover_image_uids

  resources :boat_cover_image_names

  resources :boat_cover_image_uids

  resources :cover_image_names

  resources :cover_image_uids

  resources :boat_user_emails

  resources :boat_user_phones

  resources :boat_user_names

  resources :machine_color_types

  resources :machine_town_types

  resources :machine_user_emails

  resources :machine_user_phones

  resources :machine_user_names

  resources :caravan_town_types

  resources :caravan_user_emails

  resources :caravan_user_phones

  resources :caravan_user_names

  resources :caravan_total_owners

  resources :moto_town_types

  resources :moto_user_emails

  resources :moto_user_phones

  resources :moto_user_names

  resources :moto_engine_types

  resources :moto_prices

  resources :moto_registration_numbers

  resources :moto_models

  resources :moto_makes

  resources :sub_vehicles

  resources :vehicles

  resources :car_user_emails

  resources :car_user_phones

  resources :car_user_names

  resources :car_town_types

  resources :car_domicile_types

  resources :car_weights

  resources :car_accelerations

  resources :car_top_speeds

  resources :car_emissions

  resources :car_powers

  resources :car_gearbox_types

  resources :car_fuel_types

  resources :car_drive_types

  resources :car_engine_sizes

  resources :car_mileages

  resources :car_total_owners

  resources :car_informations

  resources :car_prices

  resources :car_color_types

  resources :car_colors

  resources :car_year_models

  resources :car_sub_types

  resources :car_model_sections

  resources :car_make_sections

  resources :car_types

  resources :boat_sub_types

  resources :boat_town_type_sections

  resources :boat_domicile_types

  resources :boat_makes

  resources :boat_sub_type_sections

  resources :boats

  resources :boat_domicile_type_sections

  resources :boat_town_types

  resources :boat_storage_equipments

  resources :boat_total_owners

  resources :boat_notes

  resources :boat_engine_fuel_types

  resources :boat_engine_year_models

  resources :boat_engine_makes

  resources :boat_draughts

  resources :boat_weights

  resources :boat_widths

  resources :boat_heights

  resources :boat_lengths

  resources :boat_body_materials

  resources :boat_asking_prices

  resources :boat_year_models

  resources :boat_subtype_sections

  resources :pictures

  resources :caravans

  resources :countries

  resources :focusing_sections

  resources :industries

  resources :machine_posts

  resources :machine_town_type_sections

  resources :machine_domicile_types

  resources :machine_total_owners

  resources :machine_informations

  resources :machine_drive_types

  resources :machine_fuel_types

  resources :machine_color_type_sections

  resources :machine_colors

  resources :machine_mileages

  resources :machine_engine_sizes

  resources :machine_year_models

  resources :machine_gross_weights

  resources :machine_prices

  resources :machine_engine_models

  resources :machine_models

  resources :machine_make_sections

  resources :machine_sub_type_sections

  resources :machine_category_sections

  resources :machine_types

  resources :caravan_posts

  resources :caravan_town_type_sections

  resources :caravan_domicile_types

  resources :caravan_mileages

  resources :caravan_informations

  resources :caravan_gross_weights

  resources :caravan_dead_weights

  resources :caravan_lenghts

  resources :total_owners

  resources :caravan_asking_prices

  resources :caravan_year_models

  resources :caravan_model_sections

  resources :caravan_make_sections

  resources :caravan_types

  resources :moto_posts

  resources :moto_town_type_sections

  resources :moto_domicile_types

  resources :moto_gearbox_types

  resources :moto_fuel_types

  resources :moto_drive_types

  resources :moto_mileages

  resources :moto_informations

  resources :moto_engine_sizes

  resources :engine_types

  resources :moto_color_types

  resources :moto_colors

  resources :moto_year_models

  resources :prices

  resources :registration_numbers

  resources :moto_model_sections

  resources :moto_make_sections

  resources :type_sections

  resources :vehicle_classes

  resources :boats_domicile_type_sections

  resources :boat_posts

  resources :domicile_type_sections

  resources :boats_position_town_types

  resources :storage_equipments

  resources :notes

  resources :draughts

  resources :weights

  resources :widths

  resources :heights

  resources :lengths

  resources :boat_colors

  resources :body_materials

  resources :asking_prices

  resources :year_models

  resources :boat_models

  resources :boat_make_sections

  resources :subtype_sections

  resources :boat_types

  resources :car_posts

  resources :town_types

  resources :domicile_types

  resources :gearbox_types

  resources :fuel_types

  resources :drive_types

  resources :engine_sizes

  resources :color_types

  resources :colors

  resources :model_sections

  resources :make_sections

  resources :windows

  resources :sub_cars

  resources :cars
  resources :sub_types
  resources :types


  resources :menus

  
 
  resources :ads

  resources :ilmoitus

  resources :galleries

  resources :sub_sections

  resources :sections

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]
  match '/sub_types/for_typeid/:id' => 'sub_types#for_typeid'


 get "sessions/new"

  resources :posts

  get "pages/usage"

  get "pages/post"

  get "pages/dogs"

  get "pages/images"
   

  resources :users
 
   match '/signup',  :to => 'users#new'
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'

  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
   match '/search',    :to => 'pages#search'

  match '/usage',    :to => 'pages#usage'
  match '/post',    :to => 'pages#post'
 

match '/focusing_sections/for_industryid/:id' => 'focusing_sections#for_industryid'
 
   match '/make_sections/for_typeid/:id' => 'make_sections#for_typeid'
   match '/model_sections/for_make_sectionid/:id' => 'model_sections#for_make_se   ctionid'
   match '/caravan_make_sections/for_caravantypeid/:id' => 'caravan_make_sections  #for_caravantypeid'

   match '/sub_sections/for_sectionid/:id' => 'sub_sections#for_sectionid'
   match '/caravan_make_sections/for_caravantypeid/:id' => 'caravan_make_sections#for_caravantypeid'
    match '/car_make_sections/for_cartypeid/:id' => 'car_make_sections#for_cartypeid'


 match '/machine_category_sections/for_machinetypeid/:id' => 'machine_category_sections#for_machinetypenid'
  match '/sub_vehicles/for_vehicleid/:id' => 'sub_vehicles#for_vehicleid'

 
root :to => 'pages#home'

 get "pages/home"

  get "pages/contact"

  get "pages/about"

  resources :microposts

  resources :users

  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
