export default Ember.Route.extend({
  model: function() {
    return this.store.find('guess_the_square');
  }
});
