Hellopoem.ApplicationRoute = Ember.Route.extend({
  model: function() {
    return this.store.findQuery('poem', {
      random: true,
      limit: 1
    });
  }
});
