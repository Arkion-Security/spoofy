# spoofy
Email spoofing script that uses a local SMTP server. Tested with postfix.




```

gem install optimist

Requires local SMTP server. Tested with postfix.


Options:
  -u, --usage=<s>          ruby spoofy.rb -e email.html -s sender@email.com -n 'Sender Name' -t targets.txt -b 'Email Subject' 
  -e, --emailfile=<s>      HTML Template file
  -s, --senderemail=<s>    The sender email address
  -n, --sendername=<s>     The from name to be displayed in the email
  -t, --targets=<s>        The email address targets file
  -b, --subject=<s>        The subject
  -h, --help               Show this message




All the scripts listed in this repository should only be used for authorized penetration testing and/or 
educational purposes. Any misuse of this software will not be the responsibility of the author or of any 
other collaborator. Use it on your own networks and/or systems with the network owner's permission. 
Furthermore, please use at your own risk as the author or any other collaborator are not responsible
for any issues or trouble caused!


```
