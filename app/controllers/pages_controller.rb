class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :theme, :landing]

  def home
  end

  def theme
    @theme = params[:theme]
  end

  def landing
    @colors = ['#595758', '#E7DFC6', '#2274A5', '#131B23', '#E9F1F7', '#816C61', '#B39C4D', '#768948', '#66717E', '#C5D6D8', '#ABDF75', '#EF3E36']
  end
end
