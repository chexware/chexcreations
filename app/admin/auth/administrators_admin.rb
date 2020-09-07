Trestle.resource(:administrators, model: Trestle.config.auth.user_class, scope: Auth) do
  menu do
    group :configuration, priority: :last do
      item :administrators, icon: "fa fa-users"
    end
  end

  table do
    column :avatar, header: false do |administrator|
      avatar_for(administrator)
    end
    column :email, link: true, class: "rounded-0"
    column :first_name, class: "rounded-0"
    column :last_name, class: "rounded-0"
    actions do |a|
      a.delete unless a.instance == current_user
    end
  end

  form do |administrator|
    text_field :email, class: "rounded-0"

    row do
      col(sm: 6) { text_field :first_name, class: "rounded-0" }
      col(sm: 6) { text_field :last_name , class: "rounded-0"}
    end

    row do
      col(sm: 6) { password_field :password, class: "rounded-0" }
      col(sm: 6) { password_field :password_confirmation, class: "rounded-0" }
    end
  end
end
