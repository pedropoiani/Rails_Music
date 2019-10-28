class TracksController < ApplicationController
 
 
                def index
                
                    @track = Track.all
                
                end
 
                def show
                    @track = Track.find(params[:id])
                end

                def new 
                    @track = Track.new
                end

                def create
                    @track = Track.new(track_params)
                    if @track.save
                      redirect_to @track
                    else
                      render :new
                    end
                end

                def edit

                    @track = Track.find(track_params[:id])
                 
                end

                private

                def track_params
                    params.require(:track).permit(:name, :album, :media_type, :genre,
                                                  :milliseconds, :bytes, :unit_price)
                end


end
