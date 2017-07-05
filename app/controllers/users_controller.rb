class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @user_coordinates = { lat: @user.latitude, lng: @user.longitude }

    @hash = Gmaps4rails.build_markers([@user]) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.picture({
          "url": "#{view_context.image_path(@gender_icon = (user.gender == 1 ? 'elements/point-bleu-01.png' : 'elements/point-rose-01.png'))}",
          "width":  24,
          "height": 45
        })
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end
end
