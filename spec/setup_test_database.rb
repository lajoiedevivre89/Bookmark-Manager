require 'pg'

def setup_test_database  # like a webhelper  
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("TRUNCATE TABLE bookmarks") # clear/destroy /wipe
  connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.bbc.co.uk/news')")
  connection.exec("INSERT INTO bookmarks (url) VALUES('https://www.youtube.com')")
  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com')")

end 