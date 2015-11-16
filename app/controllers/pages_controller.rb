class PagesController < ApplicationController
  before_filter :ensure_logged_in, :only => :private
  def home
  end

  def private
  end

  private
  def ensure_logged_in
    redirect_to :root unless logged_in?
  end
end
