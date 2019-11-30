class UserTokenController < Knock::AuthTokenController
    skip_before_action :verify_authenticity_token, raise: false #without this, you'll get 422 error
end
