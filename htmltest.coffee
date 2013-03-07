# Description: 
#   html test
# 
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   test- test
#
# Author:
#   Max Goedjen

module.exports = (robot) ->
  robot.hear /test/i, (msg) ->
	msg.send '<font size="20"><strong><font color="#FF0000">BIG COLORED MESSAGE</font></strong></font>'
