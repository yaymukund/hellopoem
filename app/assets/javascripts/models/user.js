var attr = DS.attr;

Hellopoem.User = DS.Model.extend({
  login: attr('string'),

  poems: DS.hasMany('poem')
});
