class EventsController < ApplicationController
    def index
        @firstinterviews = Firstinterview.all
        @regularinterviews = Regularinterview.all
    end
end
