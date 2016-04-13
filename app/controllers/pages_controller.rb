class PagesController < ApplicationController
  before_action :authenticate_user!

  def home
    @credentials = Credential.all
  end
end
