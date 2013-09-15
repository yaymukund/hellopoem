Hellopoem.ApplicationAdapter = DS.RESTAdapter.extend({
  pathForType: function(type) {
    var underscored = Ember.String.underscore(type)
    return Ember.String.pluralize(underscored);
  }
});
