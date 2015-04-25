var app = {}


app.FoodModel = Backbone.Model.extend({

});

app.FoodList = Backbone.Collection.extend({
  url: '/api/food',
  model: app.FoodModel

});

$(document).ready(function(){
  app.foodlist = new app.FoodList();
  app.foodlist.fetch();
});
