var attr = DS.attr;

Hellopoem.Stanza = DS.Model.extend({
  rank: attr('number'),

  poem: DS.belongsTo('poem'),
  lines: DS.hasMany('line')
});
