class HelloController < ApplicationController
  def index
    if current_user
      redirect_to ("/posts/timeline")
    end
  end
end
