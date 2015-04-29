var app = app || {};

$(document).ready(function(){


  app.foods = new app.FoodCollection({
    model: app.FoodModel
  })

  app.parties = new app.PartyCollection({
    model: app.PartyModel
  })

  // app.orders = new app.OrderCollection({
  //   model: app.OrderModel
  // })

  app.foodListPainter = new app.GeneralListView({
    modelView: app.FoodView,
    collection: app.foods,
    el: $('.button'),
  });

  app.partyListPainter = new app.GeneralListView({
    modelView: app.PartyView,
    collection: app.parties,
    el: $('#party-list'),
  });

  app.orderListPainter = new app.GeneralListView({
    modelView: app.OrderView,
    collection: app.orders,
    el: $('#order-list'),
  });

  app.parties.fetch();
  app.foods.fetch();
  app.orders.fetch();

});
