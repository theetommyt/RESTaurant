var app = app || {};

app.FoodView = Backbone.View.extend({

  // Assume to have a   this.model...   which is a foodmodel

  initialize: function(){
    this.listenTo(this.model,'change', this.render);
    this.listenTo(this.model,'delete', this.remove);
  },
  template: _.template('<button class="select-food"><%= name %><br><%= cost %></button>'),
  tagName: 'li',
  className: 'food',
  render: function(){
    this.$el.append( this.template( this.model.attributes ) );
    return this;
  },
  events:{
    'click .select-food': 'selectFood'
  },
  selectFood: function(){
    $('.food-selected').removeClass('food-selected');  // for css to show the selected one
    this.$el.addClass('food-selected');  // for css to show the selected one
    app.foodSelection = this.model;
  }
});
