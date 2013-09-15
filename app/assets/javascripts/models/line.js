var attr = DS.attr;

Hellopoem.Line = DS.Model.extend({
  text: attr('string'),
  rank: attr('number'),

  stanza: DS.belongsTo('stanza')
});
