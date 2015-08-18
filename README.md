### Restaurant Basic POS
#### A General Assembly - Chicago, Web Development Immersive project assigned on a Monday morning and turned in as complete Friday of the same week. All further additions were made to clean up code, comment code for reference, and polish a few rough edges.

## Sinatra, Backbone.JS, and MVC
The focus of this project was to implement a Sinatra back-end with Backbone.JS front-end views. Also, this was experience building a full-stack web app using the Model-View-Controller design pattern.


## It Reigns in Seattle!
From a UX perspective, I wanted to create a Seattle themed restaurant with an casual, modern, and elegant feel. Since it is an POS system, the user story includes servers quickly placing orders for parties (or tables) without needing to search for what to press. The server would press the food or drink item, then the party number, and finally submit order to include it in the party order summary. The UI is mainly a flat design with influences from Google's material design and other current web trends.

## Technologies Used

### Front-End
- HTML 5
- CSS 3
- Responsive Design & Media Query
- JavaScript
- jQuery
- AJAX
- Backbone.JS
- Underscore.JS

### Back-End
- Ruby
- Sinatra
- PostgreSQL
- CRUD functionality
- User Authentication with BCrypt
- Heroku

### Full-Stack
- MVC Design Pattern


## Code Highlights
CRUD example
```
put 'api/foods/:id' do
  foods = Food.find(params[:id].to_i)
  food.update(params[:food])
  content_type :json
  monkeys.to_json
end

```
Underscore and Backbone
```
template: _.template('<button type="button" id = "food_button"><%= name %><br><%= cost></button></div>'),
tagName: 'li',
className: 'food',
render: function(){
  this.$el.append( this.template( this.model.attributes ) );
  return this;
```
Sessions
```
post '/' do
  user = User.find_by(:username => params[:username])
  if user && user.password == params[:password]
    session[:current_user] = user.id
    redirect '/admin'
  else
    redirect '/'
  end
end
```
CSS Styling
```
#register {
  display: none;
  background-color: rgba(255,255,255,0.8);
  width: 35%;
  height: 93%;
  box-shadow: 0 4px 5px 0 rgba(0, 0, 0, 0.4);
  position: relative;
  float: right;
  margin: -50 25 -20 0;
  z-index: 4;
  overflow: auto;
}
```

## Screenshots
### POS Main Display
![Screen Shot](/pos_screenshot.png)
