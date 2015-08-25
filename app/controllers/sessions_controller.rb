class SessionsController < Devise::SessionsController
  def create
    self.resource = warden.authenticate(auth_options)
    if resource && resource.active_for_authentication?
      sign_in(resource_name, resource)
     redirect_to root_path
    else
      redirect_to new_user_session_path, :notice => 'Provided incorrect details'
    end
  end
end
