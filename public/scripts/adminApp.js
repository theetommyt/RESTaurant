var app = app || {};

app.foods = new FoodCollection({
  model: app.FoodModel,
  events:{
    'click #new_food': 'new_food'
  },
  intialize: function(){

    var foodSubmit = $('#new_food');
      foodSubmit.submit(function (e) {
          $.ajax({
              type: post,
              url: '/api/foods',
              data: $('#new_food').serialize() ,
              success: function (data) {
                  alert('New Food Created');
              }
              dataType: JSON
          });

          e.preventDefault();
      });
  }

});

app.foods.fetch();
