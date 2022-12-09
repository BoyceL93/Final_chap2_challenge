def valid?(password)
    if(password).length >= 8
        return password.include?('!') || password.include?('@') || password.include?('$') || password.include?('%') || password.include?('&')
    end
end

class PasswordManager
    def initialize
        @pair = {}
    end
    def add(service, password)
        if valid?(password)
            return @pair[service] = password
        end
    end
    def password_for(service)
        return @pair[service]
    end
    def services
        return @pair.keys
    end
end


