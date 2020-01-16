require 'pg'


class Bookmark


  def self.all # we don't have to create an instance of the class (dont have to initialize 
    
    if ENV['RACK_ENV'] == 'test' # if the tests are running - a testing environment is running - we connect to the test database
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
      # query the database - get all bookmarks from the database and then iterate through - to return each bookmark on a new line 
     result = connection.exec("SELECT * FROM bookmarks") # allows us to query the database connection i.e. we can now access the bookmarks table ('bookmarks')
     result.map { |bookmark| bookmark['url'] } # hash? as each bookmark will have an id and a url 
  end

  # update model

  def self.create(url) 
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}');") # this is how we add a new bookmark to our database 
                                                          # notice the string i 
 
  end 
end

