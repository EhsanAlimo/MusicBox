User.destroy_all 
u1 = User.create :name => 'Ehsan', :email => 'ehsan@gmail.com', :password => 'chicken', :admin => true
u2 = User.create :name => 'ET', :email => 'et@gmail.com', :password => 'chicken'
u2 = User.create :name => 'Sir', :email => 'sir@gmail.com', :password => 'chicken'
puts "#{User.count} users"

 Song.destroy_all
 s1 = Song.create :name => 'Atish', :genre => 'Pop', :artist => "Ebi"
 s2 = Song.create :name => 'Gol', :genre => 'Pop', :artist => "Dariush"
 puts "#{Song.count} songs"

 Playlist.destroy_all
 p1 = Playlist.create :name => 'Khaterat', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBE6kUOvFDYhQn1T9JkLdyum1ti7i02pT_Yw&usqp=CAU'
 p2 = Playlist.create :name => 'Green', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBE6kUOvFDYhQn1T9JkLdyum1ti7i02pT_Yw&usqp=CAU'
 puts "#{Playlist.count} playlists"
 #############
 ##################
 ########ASSOCIATIONS#######
 #############
 ###################
 puts "Users and Playlists"
 u1.playlists << p1
 u2.playlists << p2

 puts "Playlist and Songs"
 p1.songs << s1
 p2.songs << s2 
 s1.playlists << p2 
 s2.playlists << p2 << p1 
 
 

