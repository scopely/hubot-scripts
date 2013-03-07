module.exports = (robot) ->
  robot.hear /test/i, (msg) ->
	msg.send '<font size="20"><strong><font color="#FF0000">BIG COLORED MESSAGE</font></strong></font>'
