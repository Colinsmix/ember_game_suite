export default Ember.Route.extend({
  model: function(params) {
    return this.store.find('guess_the_square', params.guess_the_square_id);
  },
  deactivate: function() {
    var model = this.get('controller.model');
    model.rollback();
  },
  actions: {
    save: function(model) {
      var _this = this;
      model.save().then(function() {
        _this.transitionTo('guess_the_squares.show', model);
      });
    },
    cancel: function(model) {
      this.transitionTo('guess_the_squares.show', model);
    }
  }
});
