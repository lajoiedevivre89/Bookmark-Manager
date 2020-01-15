require 'pg'

def setup_test_database  # like a webhelper  
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("TRUNCATE TABLE bookmarks") # clear/destroy /wipe
  connection.exec("INSERT INTO bookmarks VALUES(1, 'https://www.bbc.co.uk/news')")
  connection.exec("INSERT INTO bookmarks VALUES(2, 'https://www.youtube.com')")
  connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.destroyallsoftware.com')")

end 