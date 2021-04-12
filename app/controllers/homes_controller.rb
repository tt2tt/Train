class HomesController < ApplicationController
  def home
    @matter = current_user.matter
    @organization = current_user.organization
  end
end
