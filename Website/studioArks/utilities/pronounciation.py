from gtts import gTTS
import playsound
import os

def audio(word):
    language = 'en-uk'
    myobj = gTTS(text=word, lang=language, slow=False, )
    loc = "sounds/" + "A.mp3"
    myobj.save(loc)
    return loc

print(os.listdir())