var attr = DS.attr;

Hellopoem.Stanza = DS.Model.extend({
  rank: attr('number'),

  poem: DS.belongsTo('poem'),
  lines: DS.hasMany('line'),

  ranks: Ember.computed.mapBy('lines', 'rank'),
  maxRank: Ember.computed.max('ranks'),

  // Methods

  pushLine: function(newLine) {
    newLine.set('rank', this.get('maxRank') + 1);
    return this.get('lines').pushObject(newLine);
  }
});
