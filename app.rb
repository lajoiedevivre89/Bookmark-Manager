require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  
  get '/' do
    @bookmarks = Bookmark.all
    erb(:'bookmarks/index')
  end

  post '/add_bookmark' do
    @bookmark = Bookmark.create(params[:url])
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:'bookmarks/index')
  end







  run! if app_file == $0

end 