class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @users = User.all

    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end
end
