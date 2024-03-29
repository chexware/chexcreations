Trestle.resource(:projects) do
  menu do
    item :projects, icon: "fas fa-palette"
  end
  
  active_storage_fields do
    [:image]
  end
  
  form do |project|
    text_field :title, id: "title_field", class: "rounded-0"
    text_field :link, id: "link_field", class: "rounded-0"
    active_storage_field :image
   
    sidebar do
      render "sidebar"
    end
  end


  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :name
  #   column :created_at, align: :center
  #   actions
  # end

  # Customize the form fields shown on the new/edit views.
  #
  # form do |project|
  #   text_field :name
  #
  #   row do
  #     col(xs: 6) { datetime_field :updated_at }
  #     col(xs: 6) { datetime_field :created_at }
  #   end
  # end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:project).permit(:name, ...)
  # end
end
