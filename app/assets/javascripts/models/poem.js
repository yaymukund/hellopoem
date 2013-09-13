var attr = DS.attr;

Hellopoem.Poem = DS.Model.extend({
  title: attr('string'),

  author: DS.belongsTo('user'),
  stanzas: DS.hasMany('stanza')
});
