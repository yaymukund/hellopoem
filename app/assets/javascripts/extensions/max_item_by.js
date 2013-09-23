Ember.computed.maxItemBy = function(dependentKey, propertyKey) {
  var key = dependentKey + '.@each.' + propertyKey;

  return Ember.reduceComputed.call(null, key, {
    initialValue: false,

    addedItem: function(itemWithMax, item, changeMeta, instanceMeta) {
      if (!itemWithMax) { return item; }

      var max = itemWithMax.get(propertyKey),
          current = item.get(propertyKey);

      return (current > max) ? item : itemWithMax;
    },

    removedItem: function(itemWithMax, item, changeMeta, instanceMeta) {
      if (itemWithMax !== item) {
        return itemWithMax;
      }
    }
  });
};
