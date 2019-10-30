class MediaTypesController < ApplicationController
 
 
    def index
                
        @media_type = MediaType.all
                
    end

end 