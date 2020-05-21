class Business::ApplicationController < ApplicationController
  before_action :authenticate_admin!
  layout 'admin'
end
