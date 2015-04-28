var app = app || {};

app.FoodView = Backbone.View.extend({
  initialize: function(){
    this.listenTo(this.model,'change', this.render);
    this.listenTo(this.model,'delete', this.remove);
  },
  template: _.template('<div class = "buttons"><button type="button"><%= name %><br><%= cost></button></div>'),
  tagName: 'div',
  className: 'food',

  render: function(){
    this.$el.append( this.template( this.model.attributes ) );
    return this;
  },
  events:{
    'click .select-food': 'selectFood'
  },
  selectFood: function(){
    $('.food-selected').removeClass('food-selected');
    this.$el.addClass('food-selected');
    app.foodSelection = this.model;
  }
});
