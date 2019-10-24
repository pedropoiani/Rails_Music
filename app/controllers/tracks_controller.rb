class TracksController < ApplicationController
 
 
                def index
                
                    @track = Track.all
                
                end

            end