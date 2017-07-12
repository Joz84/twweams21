module UserHelper
  def gender_photo_path(user)
    user.gender == 'male' ? 'elements/Avatar bleu-01.png' : 'elements/Avatar rose-01.png'
  end

  def default_image_tag(user)
    if user.photo?
      cl_image_tag user.photo.path, id: "avatar", crop: :fill
    else
      image_tag gender_photo_path(user), alt: 'avatar', id: "avatar"
    end
  end

  def link_to_edit(user, image_tag)
    if current_user == user
      link_to image_tag, edit_user_registration_path
    else
      image_tag
    end
  end
end
# #   def default_photo_path
# #     if current_user == @user
# #           <%= link_to edit_user_registration_path do %>
# #             if @user.photo?
# #               <%= cl_image_tag @user.photo.path, id: "avatar", crop: :fill %>
# #             else
# #               <%= @user.gender == 'male' ? (image_tag 'elements/Avatar bleu-01.png', alt: 'avatar', id: "avatar") : (image_tag 'elements/Avatar rose-01.png', alt: 'avatar', id: "avatar") %>
# #             end
# #           end
# #         else

# #         end
# #   end
# # end




# if @user.photo?
#   @user.photo.path
# elsif @user.gender == 'male'
#   'elements/Avatar bleu-01.png'
# else
#   'elements/Avatar rose-01.png'

# 'elements/Avatar bleu-01.png'
# <%= cl_image_tag @user.default_photo_path, alt: 'avatar', id: "avatar" %>
