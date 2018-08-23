class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :theme, :landing]

  def home
  end

  def theme
    @theme = params[:theme]
  end

  def landing
  end
end
