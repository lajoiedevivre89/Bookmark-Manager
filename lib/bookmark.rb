require 'pg'


class Bookmark


  def self.all # we don't have to create an instance of the class (dont have to initialize )
   # [
     # "https://www.bbc.co.uk/news",
     # "https://www.youtube.com",
     # "https://twitter.com/home"
     #]
     #
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
  
     result = connection.exec("SELECT * FROM bookmarks;") # allows us to query the database connection i.e. we can now access the bookmarks table ('bookmarks')
     result.map { |bookmark| bookmark['url'] } # hash? as each bookmark will have an id and a url 
  end
end