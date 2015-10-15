require 'rails_helper'

RSpec.describe "user_decorators/new", type: :view do
  before(:each) do
    assign(:user_decorator, UserDecorator.new(
      :first_name => "MyString",
      :family_name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new user_decorator form" do
    render

    assert_select "form[action=?][method=?]", user_decorators_path, "post" do

      assert_select "input#user_decorator_first_name[name=?]", "user_decorator[first_name]"

      assert_select "input#user_decorator_family_name[name=?]", "user_decorator[family_name]"

      assert_select "input#user_decorator_email[name=?]", "user_decorator[email]"
    end
  end
end
