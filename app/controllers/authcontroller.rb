# class AuthController < ApplicationController

#   def twitter
#     process_callback
#   end

#   def facebook
#     process_callback
#   end
 
#   private

#   def process_callback
#     oauth_data = request.env['omniauth.auth']

#     user = sign_in_with_oauth_data(oauth_data) unless user_signed_in?
#     user.register_social_profile(normalize_oauth_data(oauth_data), normalize_profile_data(oauth_data))

#     redirect_to '/'
#   end


#   protected

#   def sign_in_with_oauth_data(data)
#     user =  User.find_or_create_with_oauth(data)
#     sign_in :user, user

#     user
#   end

#   def normalize_oauth_data(oauth_data)
#     {service_name: oauth_data.provider, uid: oauth_data.uid, access_token: oauth_data.credentials.token, secret_key: oauth_data.credentials.secret}
#   end

#   def normalize_profile_data(oauth_data)
#     result = { service_name: oauth_data.provider }
#     result.merge!(send(:"normalize_#{oauth_data.provider}_data", oauth_data))

#     result
#   end

#   def normalize_facebook_data(oauth_data)
#     data = oauth_data.extra.raw_info
#     { full_name: data.name, picture: data.picture, link: data.link }
#   end

#   def normalize_twitter_data(oauth_data)
#     data = oauth_data.extra.raw_info
#     { username: data.screen_name, picture: data.profile_image_url, full_name: data.name, lang: data.lang }
#   end

#   def normalize_instagram_data(oauth_data)
#     data = oauth_data.info
#     { full_name: data.name, picture: data.image, username: data.nickname }
#   end
# end