module Players
  class SessionsController < Devise::SessionsController
    def destroy
      super do
        return redirect_to after_sign_out_path_for(resource_name), status: :see_other
      end
    end
  end
end
