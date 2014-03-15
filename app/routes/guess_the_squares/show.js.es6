export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('guess_the_square', params.guess_the_square_id);
  },
  actions: {
    destroyRecord: function(model) {
      var _this = this;
      model.destroyRecord().then(function() {
        _this.transitionTo('guess_the_squares.index');
      });
    }
  }
});
