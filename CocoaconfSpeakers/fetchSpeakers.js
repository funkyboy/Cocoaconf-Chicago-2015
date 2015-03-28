var speakerTags = document.querySelectorAll('li.media')

speakers = []

for (var i = 0; i < speakerTags.length; i++) {
  var speaker = speakerTags[i]
  var name = speaker.querySelector('.media-heading').textContent
  var avatarURL = speaker.querySelector('a img').getAttribute('src')
  speakers.push({"speakerName" : name, "avatarURL" : "http://www.cocoaconf.com"+avatarURL})
}

webkit.messageHandlers.didFetchSpeakers.postMessage(speakers)