class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @users = User.all

    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.picture ({
          :url => view_context.image_path(@gender_icon = (user.gender == 1 ? 'elements/Point-bleu-01.png' : 'elements/Point-rose-01.png')),
          :width => 16,
          :height => 16
        })
      # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end
end
