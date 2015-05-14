class WelcomeController < ApplicationController
  def index
    @time = Time.now
    @pretty_time = @time.stamp("8:00 am on the 1st of January")
  end

  def about
  end

  def contact
  end
end
