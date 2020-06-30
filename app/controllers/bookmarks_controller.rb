class BookmarksController < ApplicationController
    def index 
        @bookmarks = Bookmark.all
        render json: @bookmarks
      end 

      def create
       Bookmark.create(bookmark_params)
       render json: "created bookmark", status: :created
      end

      private
      def bookmark_params
        params.require(:bookmark).permit(:title, :url, :description)
      end
end
