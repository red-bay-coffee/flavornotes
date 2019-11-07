# frozen_string_literal: true

ActiveAdmin.register Coffee do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :image_url, :discount_link, :web_link, :origin, :description, :story
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :image_url, :discount_link, :web_link, :origin, :description, :story]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  index do
    selectable_column
    id_column
    column :name
    column :image_url
    column :discount_link
    column :web_link
    column :origin
    column :description
    actions
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :image_url
      f.input :discount_link
      f.input :web_link
      f.input :origin
      f.input :description
      f.input :story, as: :quill_editor
    end
    f.actions
  end
end
