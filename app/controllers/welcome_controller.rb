class WelcomeController < ApplicationController
  def personalized
    @first_name = params[:first_name]
  end
end