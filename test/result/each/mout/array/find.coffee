
###
Returns first item that matches criteria
###
find = (arr, iterator, thisObj) ->
  idx = findIndex(arr, iterator, thisObj)
  (if idx >= 0 then arr[idx] else undefined)
findIndex = require("./findIndex")
module.exports = find