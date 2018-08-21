class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :theme]

  def home
  end

  def theme
    @theme = params[:theme]
  end
end
