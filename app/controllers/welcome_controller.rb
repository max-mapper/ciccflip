class WelcomeController < ApplicationController
  def lookup
    @senators = Senator.where(:state => params[:state]).all
  end
end
