# Description:
#   Email from hubot to a scopely address
#
# Dependencies:
#   "nodemailer": "0.3.43"
#
# Configuration:
#   HUBOT_SCOPELYMAIL_USERNAME
#	HUBOT_SCOPELYMAIL_PASSWORD
#
# Commands:
#   hubot email <user>(scopely.com)? <message>
#
# Author:
#   maxgoedjen
#
# Additional Requirements
#   unix mail client installed on the system

nodemailer = require("nodemailer");

username = process.env.HUBOT_SCOPELYMAIL_USERNAME
password = process.env.HUBOT_SCOPELYMAIL_PASSWORD

module.exports = (robot) ->
	robot.respond /email ([^@.]*)(@scopely.com)? (.*)/i, (res) ->
		transport = nodemailer.createTransport("SMTP", {
			service: "Gmail",
			auth: {
				user: username,
				pass: password
			}
		})

		to_email = "#{res.match[1]}@scopely.com"
		transport.sendMail({
			from: "hubot@scopely.com",
			to: to_email,
			subject: "Message from #{res.message.user.name} via Hubot",
			text: res.match[3]
		})
		res.send 'Message sent.'