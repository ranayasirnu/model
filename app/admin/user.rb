ActiveAdmin.register User do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  filter :user_id
  filter :location
  filter :status
  permit_params :list, :of, :attributes, :on, :model, :user_id, :location, :status
  
  index do
    column :id
    column :user_id
    column :location
    column :status
    actions
  end
  
  form do |f|
    f.inputs "User information" do
      f.input :user_id
      f.input :location
      f.input :status
    end
    f.actions
  end
  
   show do |cause|
    attributes_table do
      row :id
      row :user_id
      row :location
      row :status
    end
    active_admin_comments
  end
   
  
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end


end
