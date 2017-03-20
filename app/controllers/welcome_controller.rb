class WelcomeController < ApplicationController
  def index
    flash[:warning] = "加油陈帅!加油林南!加油一诺!"
  end
end
