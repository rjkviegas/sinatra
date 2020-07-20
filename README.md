# sinatra
Week 3 Afternoon Pairing Challenge

## Monday 
Ilja & Ryan


When a server receives a request along with a path, it activates a particular route.

'/' usually activates a server's 'root' route, or the index route of an application.

Routes, distinct entry points to an application activate different server actions and so return different responses.


### Shotgun

Here's a way to reload the files without restarting the entire process.
Firstly, install a gem called Shotgun within this project.

Secondly, load your application like this:
```
$ shotgun app.rb -p 4567
```
The -p switch tells shotgun what port to use. Use this switch to keep the port consistent with the default Sinatra port. By default shotgun will use port 9393.

While this is very convenient for our development process, it might cause problems down the line with the way Sinatra secures session data (you will learn about this in a later challenge). To avoid this pitfall, we should add the line set 
```
:session_secret, 'super secret' 
```
to our app.rb file.



http://localhost:4567
