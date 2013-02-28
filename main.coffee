# Check node.js environment
if typeof module != 'undefined' && module.exports
   $ = require 'jquery'
   jade = require 'jade'
   isNode = true
else
   isNode = false

# Jade template engine
j = (str, args = [])->
   # TODO: multiple nesting level
   r = $.parseXML(jade.compile(str.replace('>',"\n "), args)())
   r = $(r)
   r.find(r[0].firstChild.nodeName.replace(':','\\:'))

$.fn.appendj = (str)->
      this.append j(str)

if isNode
   exports.j = j
else
   window.j = j