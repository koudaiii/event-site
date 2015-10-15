# coding: utf-8
require 'spec_helper'

describe UserDecoratorDecorator do
  let(:user_decorator) { UserDecorator.new.extend UserDecoratorDecorator }
  subject { user_decorator }
  it { should be_a UserDecorator }
end
