class ArtistsController < ApplicationController
 
 
  def index
  
    @artist = Artist.filtrar(params['name']) 
 end

    def new

      @artist = Artist.new

  end

  def show

    @artist = Artist.find(params[:id])

  end 

  def edit

    @artist = Artist.find(params[:id])

  end

  def update
      
      @artist = Artist.find(params[:id])

        if @artist.update_attributes(artist_params)
          redirect_to @artist, :notice => 'Cadastro Atualizado com Sucesso!'
      
        else
          render :edit
        end

      end

      def create

        @artist = Artist.new(artist_params)
        if @artist.save
          redirect_to @artist, :notice => 'Cadastro criado com sucesso!'
          else
            render :new
          end
       
        end


        def destroy
    
          id = params[:id]
          Artist.destroy id
          redirect_to :artist
        end
        
      end


          private

            def artist_params

                params.require(:artist).permit(:name)
              
              end


