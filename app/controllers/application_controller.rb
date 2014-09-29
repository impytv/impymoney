include GoogleHelper

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  CLIENT_ID = '821977399102-d94na4vkdl4k03and4ql856ghbpsc182.apps.googleusercontent.com'
  CLIENT_SECRET = 'q5jvfHtR21A2dvkd0MNcoYri'
  CLIENT_SCOPE = 'https://www.googleapis.com/auth/userinfo.profile https://www.googleapis.com/auth/userinfo.email'
end
