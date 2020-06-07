# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        to_dos#index
#                    to_dos POST   /to_dos(.:format)                                                                        to_dos#create
#                 new_to_do GET    /to_dos/new(.:format)                                                                    to_dos#new
#                edit_to_do GET    /to_dos/:id/edit(.:format)                                                               to_dos#edit
#                     to_do GET    /to_dos/:id(.:format)                                                                    to_dos#show
#                           PATCH  /to_dos/:id(.:format)                                                                    to_dos#update
#                           PUT    /to_dos/:id(.:format)                                                                    to_dos#update
#                           DELETE /to_dos/:id(.:format)                                                                    to_dos#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  root 'to_dos#index'
  resources :to_dos, except: [:index]
end
