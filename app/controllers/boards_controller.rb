class BoardsController < ApplicationController
    before_action :authenticate_user!,only:[:create,:edit,:update,:destroy]
    before_action :set_tweet, only: [:edit, :show,:update,:destroy]
 
    def index
      @boards = Board.includes(:user)
    end
    
   