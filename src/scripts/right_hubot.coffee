# Description:
#   None
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   right, hubot?
#
# Author:
#   maxgoedjen

module.exports = (robot) ->
  robot.hear /right(,)? hubot/i, (msg) ->
    msg.send 'Yep.'
