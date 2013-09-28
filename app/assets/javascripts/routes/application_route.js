Hellopoem.ApplicationRoute = Ember.Route.extend({
  model: Hellopoem.Poem.random,
  setupController: function(controller, model) {
    var newLine = this.store.createRecord('line');

    controller.setProperties({
      model: model,
      newLine: newLine
    });
  },

  actions: {
    createLine: function() {
      var self = this,
          poem = this.get('controller.model'),
          newLine = this.get('controller.newLine');

      poem.pushLine(newLine);

      newLine.save().then(function() {
        var newLine = self.store.createRecord('line')
        self.set('controller.newLine', newLine);
      });
    }
  }
});
