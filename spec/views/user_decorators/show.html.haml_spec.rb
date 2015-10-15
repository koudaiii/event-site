require 'rails_helper'

RSpec.describe "user_decorators/show", type: :view do
  before(:each) do
    @user_decorator = assign(:user_decorator, UserDecorator.create!(
      :first_name => "First Name",
      :family_name => "Family Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Family Name/)
    expect(rendered).to match(/Email/)
  end
end
