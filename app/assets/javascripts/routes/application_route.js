Hellopoem.ApplicationRoute = Ember.Route.extend({
  model: function() {
    return Hellopoem.Poem.random();
  }
});
