import pywhatkit as pwk

contacts = ["+213672138811"]

message = ""
message = message + "\n٢٣٦-٢٤٦"
message = message + "\nعرض جديد ومميز"
message = message + "\nدبلكس عدد ٢ - حي الوادي"
message = message + "\nمساحة ٣٩٠م بطول ١٣م على الشارع"
message = message + "\nمسطح ٥٤٦م - شارع ١٥ شمالي"
message = message + "\nواجهته حجر مع حجر كرفنتينا- جميع مواد السباكه والكهرباء عليه ضمان - جبسيات راقيه -"
message = message + "\nابواب قص ليزر - حديقه"
message = message + "\n"
message = message + "\nيتكون من:"
message = message + "\n"
message = message + "\nمشب - مجلس رجال مع حمام ومغاسل - مجلس نساء مع حمام ومغاسل - غرفة مع حمام - مقلط - صالة - مطبخ ومستودع"
message = message + "\n"
message = message + "\nالدور العلوي:"
message = message + "\nغرفة ماستر مع مكان دولايب وسطح جانب - غرفتين بينهم حمام - غرفة مع دورة مياه - صاله - مطبخ تحضيري"
message = message + "\n"
message = message + "\nالسطح:"
message = message + "\nملحق علوي للشغالة"
message = message + "\n"
message = message + "\nمكتب مسكنك للعقارات"
message = message + "\n٠٥٣٣٥٨٦٦٠٠ / ٠٥٥٥٩٦٤٥٠٦ / ٠٥٥٢٦٧٥٦٥٩ / ٠٥٣٣٥١٣٥٩٨ / ٠٥٠٠٧٧٥٧٣١"
message = message + "\n"
message = message + "\nالكود العقاري ٣٧٢٤٠٧٩ "
message = message + "\n"
message = message + "\nصور العقار"
message = message + "\nhttps://www.dropbox.com/sh/eaf68apj7w8l2lh/AADixr4xUrjgKI7X-Sg73Ru9a?dl=0"


hh = 15
mm = 10

for contact in contacts.contacts:
    # using Exception Handling to avoid unexpected errors
    try:
        # sending message in Whatsapp in India so using Indian dial code (+91)

        pwk.sendwhatmsg_instantly(contact, messages.msg, hh, mm)
        # pwk.sendwhats_image("فلنقرأ - طلب العلم الشرعي", "C:/Users/eHamzaDZ/Desktop/villa.png", "Hi")

        print("Message Sent!")  # Prints success message in console
        hh = hh
        mm = mm + 1
        # time.sleep(17)

        # error message
    except:
        print("Error in sending the message")
