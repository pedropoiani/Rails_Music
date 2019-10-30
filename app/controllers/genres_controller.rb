class GenresController < ApplicationController
 
 
    def index
                
        @genre = Genre.all
                
    end

end 