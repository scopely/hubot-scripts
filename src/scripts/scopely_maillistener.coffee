# Description:
#   Post emails sent to hubot to skype.
#
# Author:
#   maxgoedjen

module.exports = (robot) ->
  robot.router.post "/hubot/mail", (req, res) ->
    data = req.body
    console.log data
    robot.messageRoom data['room'], data['message']
    res.writeHead 204, { 'Content-Length': 0 }
    res.end()