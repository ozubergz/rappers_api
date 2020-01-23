class ApplicationController < ActionController::API
    
    #encode token
    def encode_token(payload)
        JWT.encode(payload, "pfoiqewmjpogiawpg")
    end

    
end
