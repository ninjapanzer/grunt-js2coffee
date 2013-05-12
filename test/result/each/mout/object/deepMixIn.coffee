
###
Mixes objects into the target object, recursively mixing existing child
objects.
###
deepMixIn = (target, objects) ->
  i = 0
  n = arguments_.length
  obj = undefined
  while ++i < n
    obj = arguments_[i]
    forOwn obj, copyProp, target  if obj
  target
copyProp = (val, key) ->
  existing = this[key]
  if isPlainObject(val) and isPlainObject(existing)
    deepMixIn existing, val
  else
    this[key] = val
forOwn = require("./forOwn")
isPlainObject = require("../lang/isPlainObject")
module.exports = deepMixIn