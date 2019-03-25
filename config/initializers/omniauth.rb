# OmniauthData = YAML.load_file(Rails.root.join('config', 'omniauth_config.yml'))[‘omniauth_keys’]

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook,  OmniauthData['facebook']['token'],  OmniauthData['facebook']['key'], { scope: OmniauthData['facebook']['scope'] }
#   provider :twitter,   OmniauthData['twitter']['token'],   OmniauthData['twitter']['key']
# provider :instagram,   OmniauthData[instagram]['token'],   OmniauthData[‘instagram’]['key']
# end


# 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV['248907893160-q5rvfssqcatt7q231ijlambsn5p785oh.apps.googleusercontent.com'], ENV['1FS0Ss2209xuD9EibwN8WLuq']
end