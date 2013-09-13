var attr = DS.attr;

Hellopoem.Line = DS.Model.extend({
  text: attr({type: 'string'}),
  rank: attr({type: 'number'}),

  stanza: DS.belongsTo('stanza')
});
