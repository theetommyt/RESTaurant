var app = app || {};

$(document).ready(function(){


  app.foods = new app.FoodCollection({
    model: app.FoodModel
  })

  app.parties = new app.PartyCollection({
    model: app.PartyModel
  })

  app.foodListPainter = new app.GeneralListView({
    modelView: app.FoodView, // How to draw an individual food
    collection: app.foods,   //  All of the foods
    el: $('#food_div'),     //  Where to render on the page
  });

  app.partyListPainter = new app.GeneralListView({
    modelView: app.PartyView,
    collection: app.parties,
    el: $('#party_div'),
  });


  app.parties.fetch();
  app.foods.fetch();


  $('#place-order').on('click', function(){

    var partyId = app.partySelection.get('id');
    var foodId = app.foodSelection.get('id');

    $.ajax({
      method: 'post',
      url: '/api/orders',
      data: {order: {party_id: partyId, food_id: foodId} },
      success: function(options){
        app.parties.fetch( {reset: true} );

        $('.food-selected').removeClass('food-selected');
        $('.party-selected').removeClass('party-selected');

        // show the full order

      }
    });

  });

  $('#food_div').fadeIn(1000);
  $('#register').slideDown(1000);

});
