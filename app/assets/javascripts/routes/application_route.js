Hellopoem.ApplicationRoute = Ember.Route.extend({
  model: Hellopoem.Poem.random,
  setupController: function(controller, model) {
    var newLine = this.store.createRecord('line');
    newLine.set('text', 'This is a test');
    window.poem = model;

    controller.setProperties({
      model: model,
      newLine: newLine
    });
  },

  actions: {
    createLine: function() {
      var poem = this.get('controller.model'),
          newLine = this.get('controller.newLine');

      poem.pushLine(newLine);
      newLine.save();
    }
  }
});
