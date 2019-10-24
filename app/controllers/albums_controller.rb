class AlbumsController < ApplicationController
 
 
  def index
  
    @album = Album.all
  
    end
    
    def new

      @album = Album.new

     end


        def show

          @album = Album.find(params[:id])

        end  

        def create

          @album = Album.new(album_params)
          if @album.save
            redirect_to @album.artist, :notice => 'Cadastro criado com sucesso!'
            else
              render :new
            end

          end 
          
          private

              def album_params

                  params.require(:album).permit(:title, :artist_id)
                
                end


              end
          
