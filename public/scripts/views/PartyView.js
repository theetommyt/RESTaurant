var app = app || {};

app.PartyView = Backbone.View.extend({

  initialize: function(){
    this.listenTo(this.model,'change', this.render);
    this.listenTo(this.model,'delete', this.remove);
  },
  template: _.template('<button class="select-party"><%= table_number %></button>'),
  tagName: 'li',
  className: 'party',
  render: function(){
    this.$el.append( this.template( this.model.attributes ) );
    this.renderFoodList();
    return this;
  },
  renderFoodList: function(){
    var foods = this.model.get('foods')
    var foodList = $('<ul>');
    for (var i = 0; i < foods.length; i++) {
      foodList.append( $('<li>').text( foods[i]['name'] ) );
    }
    this.$el.append(foodList);
  },
  events:{
    'click .select-party': 'selectParty'
    // 'event css-selector': 'functionToCall'
  },
  selectParty: function(){
    $('.party-selected').removeClass('party-selected');
    this.$el.addClass('party-selected');
    app.partySelection = this.model;
  }
});
