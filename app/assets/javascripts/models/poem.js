var attr = DS.attr;

Hellopoem.Poem = DS.Model.extend({
  title: attr('string'),
  user: DS.belongsTo('user'),
  stanzas: DS.hasMany('stanza'),
  lastStanza: Ember.computed.maxItemBy('stanzas', 'rank'),

  // Methods

  pushLine: function(newLine) {
    return this.get('lastStanza').pushLine(newLine);
  }
});

Hellopoem.Poem.reopenClass({
  random: function() {
    var store = Hellopoem.__container__.lookup('store:main');

    return new Ember.RSVP.Promise(function(resolve, reject) {
      store.findQuery('poem', {
        random: true,
        limit: 1

      }).then(function(poems) {
        resolve(poems.get('firstObject'));

      }, reject);
    });
  }
});
