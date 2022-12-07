class EmailController < ApplicationController
    # allows only logged in users
    before_action :require_user_logged_in!
    def edit; end
    def update
      # update user password
      if Current.user.update(email_params)
        redirect_to root_path, notice: 'Email Updated'
      else
        render :edit
      end
    end
    private
    def email_params
      params.require(:user).permit(:email)
    end
  end