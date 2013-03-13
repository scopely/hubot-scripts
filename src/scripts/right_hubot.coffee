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
	if msg.message.user.name == 'dataxpress'
	  msg.send 'No, Tim.'
	msg.send 'Yep.'