class SessionController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    puts auth_hash
  end

  def destroy
  end

  private

  def auth_hash
    request.env["omniauth.auth"]
  end
end
