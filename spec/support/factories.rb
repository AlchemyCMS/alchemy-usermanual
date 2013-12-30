FactoryGirl.define do
  factory :user, class: 'Alchemy::User' do
    login "john.doe"
    email "john@doe.com"
    firstname 'John'
    lastname 'Doe'
    password 's3cr3t'
    password_confirmation 's3cr3t'

    factory :admin_user do
      alchemy_roles 'admin'
    end

    factory :member_user do
      alchemy_roles 'member'
    end

    factory :author_user do
      alchemy_roles 'author'
    end

    factory :editor_user do
      alchemy_roles 'editor'
    end
  end
end
