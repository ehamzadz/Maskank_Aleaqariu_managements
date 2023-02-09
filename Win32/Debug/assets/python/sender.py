import pywhatkit as pwk

import contacts
import messages


# contacts = ["+213672138811"]


hh = 15
mm = 10

for num in contacts.nums:
    # using Exception Handling to avoid unexpected errors
    try:
        # sending message in Whatsapp in India so using Indian dial code (+91)

        pwk.sendwhatmsg_instantly(num, messages.msg, hh, mm)
        # pwk.sendwhats_image("فلنقرأ - طلب العلم الشرعي", "C:/Users/eHamzaDZ/Desktop/villa.png", "Hi")

        print("Message Sent!")  # Prints success message in console
        hh = hh
        mm = mm + 1
        # time.sleep(17)

        # error message
    except:
        print("Error in sending the message")
