from django.shortcuts import render
from gtts import gTTS
import playsound
import os,shutil
from datetime import datetime


def audio(word):
    language = 'en-uk'
    myobj = gTTS(text=word, lang=language, slow=False)
    loc = os.getcwd() + "\studioArks/sounds/" + get_current_time() + ".mp4"
    myobj.save(loc)
    return loc


def get_current_time():
    df = "{:%Y%m%d%H%M%S}"
    today = datetime.now()
    date_string = df.format(today)
    return date_string


def delete_files_in_folder():
    folder = os.getcwd() + "\studioArks/sounds"
    for the_file in os.listdir(folder):
        file_path = os.path.join(folder, the_file)
        try:
            if os.path.isfile(file_path):
                os.unlink(file_path)
            elif os.path.isdir(file_path):
                shutil.rmtree(file_path)
        except Exception as e:
            print(e)


def landing_page(request):
    if request.method == 'POST':
        delete_files_in_folder()
        word = request.POST.get('search')
        playsound.playsound(audio(word), True)
        return render(request, 'studioArks/landingPage.html')
    else:
        delete_files_in_folder()
        return render(request, 'studioArks/landingPage.html')

