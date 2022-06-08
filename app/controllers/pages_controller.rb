class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :profil]

  def home
  end

  def profil
  end
end
