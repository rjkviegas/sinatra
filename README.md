# sinatra
Week 3 Afternoon Pairing Challenge

## Monday
Ilja & Ryan


When a server receives a request along with a path, it activates a particular route.

'/' usually activates a server's 'root' route, or the index route of an application.

Routes, distinct entry points to an application activate different server actions and so return different responses.

### Browser Link

http://localhost:4567

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


### HTML & CSS

Correct way to add CSS elements:
```
get '/cat' do
  "<div style='border: 3px dashed red'>
      <img src='http://bit.ly/1eze8aE'>
    </div>"
end
```

### Views

Using **views** encourages a clean separation of concerns.

In our case, app.rb will be for routing (or controlling) concerns, and we will use another file for our presentation (or view) concerns.

A web application is far more manageable when the routing (or 'controller') and presentation (or 'view') concerns are separated.

### ERB

Part of the Ruby Standard Library

The power of ERB comes when you include the following symbols: <%= %> somewhere in a string.

### Assigning instance variables for refactoring

Assign instance variables in app.rb to hide .sample method from CSS:
```
get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb :index
end
```
Although you are used to instance variables being accessible throughout an instance of a class, the @name instance variable is only accessible within the scope of the route in which is was defined. In other words, you cannot visit /cat to set @name, and then visit another route that uses that same @name. The instance variable cannot be accessed by any other routes.

### Params
Let you extract extra information from a client request.