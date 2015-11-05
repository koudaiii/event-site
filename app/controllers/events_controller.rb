class EventsController < ApplicationController
  before_action :authenticate
  def new
    @event = Event.new
  end
end
