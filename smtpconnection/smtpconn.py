'''
import smtplib
server=smtplib.SMTP('smtp.gmail.com',587)
server.starttls()
server.login('shahaji.nangare@gmail.com','nangare()04')
server.sendmail('shahaji.nangare@gmail.com','shahaji.nangare@adityabirlacapital.com',"Hello world")
server.quit()
'''

import smtplib
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
from email.utils import formatdate
from email.mime.base import MIMEBase
from email import encoders
import os
import config

send_from = config.SEND_FROM_EMAIL
send_pwd = config.SEND_FROM_PASSWORD
server= config.SMTP_SERVER
port= config.SMTP_PORT

def send_mail(send_to, subject, text, files=None):
    msg = MIMEMultipart()
    msg['From'] = send_from
    msg['To'] = send_to
    msg['Date'] = formatdate(localtime=True)
    msg['Subject'] = subject

    msg.attach(MIMEText(text))
    for file in files:  # add files to the message
        attachment = MIMEBase('application', 'octet-stream')
        attachment.set_payload(open(file, 'rb').read())
        encoders.encode_base64(attachment)
        attachment.add_header('Content-Disposition', 'attachment; filename="%s"' % os.path.basename(file))
        msg.attach(attachment)

    smtp = smtplib.SMTP(server,port)
    smtp.starttls()
    smtp.login(send_from, send_pwd)
    smtp.sendmail(send_from, send_to, msg.as_string())
    smtp.close()
