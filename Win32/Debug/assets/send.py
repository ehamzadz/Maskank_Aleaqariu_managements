from twilio.rest import Client 
 
account_sid = 'ACa3a74b22ee82214583402d0a38549b25' 
auth_token = '8a55172957429dea2ccd8619b11a8f69' 
client = Client(account_sid, auth_token) 
 
message = client.messages.create( 
                              from_='whatsapp:+14155238886',  
                              body='Your Twilio code is 1238432',      
                              to='whatsapp:+213672138811' 
                          ) 
 
print(message.sid)