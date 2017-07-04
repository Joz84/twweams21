class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @users = User.all

    @users.each do |user|
      @user_coordinates = { lat: user.latitude, lng: user.longitude }
    end

    @hash = Gmaps4rails.build_markers([@user]) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end
end
