class User < ApplicationRecord
    has_secure_password #password reader/writer and password_confirmation reader/writer, and authenticate
end
