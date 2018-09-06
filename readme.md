# Sinatra Rest Api For Reverie.fun Content

sqlite3 on windows is not working right with ruby 2.5. Make sure sqlite3 native libraries are installed with ruby's msys 
instance and compile the sqlite3 native library on your system if there are errors with the sqlite3 require statement.

Open RUBY_HOME/bin/msys64

run the command below

	pacman -Sy mingw-w64-x86_64-sqlite3

Then build the native library with the command below.

	gem inst sqlite3 --platform ruby


