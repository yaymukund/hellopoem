var attr = DS.attr;

Hellopoem.Poem = DS.Model.extend({
  title: attr('string'),

  user: DS.belongsTo('user'),
  stanzas: DS.hasMany('stanza')
});
