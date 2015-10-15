json.array!(@user_decorators) do |user_decorator|
  json.extract! user_decorator, :id, :first_name, :family_name, :email
  json.url user_decorator_url(user_decorator, format: :json)
end
