from pytube import YouTube

link = input("Enter Youtube Link: ")
yt = YouTube(link)
print('\n')

print("Title: ", yt.title)
length_video = int(yt.length)
min, sec = divmod(length_video, 60)
print("Duration: ", "{}:{}".format(min ,sec))
print("Views: ", yt.views)
print('\n')
print("Downloading... Please Wait.")
print('\n')

ys = yt.streams.get_audio_only()
ys.download()
print("Download Complete!")

input("Premere un tasto per chiudere")