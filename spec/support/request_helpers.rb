module Request 
    module Jsonhelpers
            def json_response 
                @json_response ||= JSON.parse(response.body,symbolize_names: true)
            end
        end 
    end 
    