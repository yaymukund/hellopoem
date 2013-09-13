var attr = DS.attr;

Hellopoem.Stanza = DS.Model.extend({
  rank: attr({type: 'number'}),

  poem: DS.belongsTo('poem'),
  lines: DS.hasMany('line')
});
