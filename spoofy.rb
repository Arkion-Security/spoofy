require 'optimist'
require 'net/smtp'


##################################---  Menu  ---##################################
opts = Optimist::options do	
  opt :usage, "ruby spoofy.rb -e email.html -s sender@email.com -n 'Sender Name' -t targets.txt -b 'Email Subject' ", :type => :string   	     
  opt :emailfile, "HTML Template file", :type => :string      		     
  opt :senderemail, "The sender email address", :type => :string      		     
  opt :sendername, "The from name to be displayed in the email", :type => :string      
  opt :targets, "The email address targets file", :type => :string      
  opt :subject, "The subject", :type => :string  
end

file = File.open(opts.emailfile)
body = file.read

senderemail = opts.senderemail
sendername = opts.sendername
subject = opts.subject




line_num=0
recipientemail=File.open(opts.targets).read
recipientemail.gsub!(/\r\n?/, "\n")
recipientemail = recipientemail.split("\n") 

recipientemail.each do |line|
  

recipientname = line.split("@")[0].split(".").join(" ")

message = <<MESSAGE_END
From: #{sendername} <#{senderemail}>
To: #{recipientname} <#{line}>
MIME-Version: 1.0
Content-type: text/html
Subject: #{subject}
#{body}
MESSAGE_END

Net::SMTP.start('localhost') do |smtp|
   smtp.send_message message, senderemail, line


end



end
