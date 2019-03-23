require 'http'


response = HTTP.get("https://translate.yandex.net/api/v1.5/tr.json/translate?key=trnsl.1.1.20190320T200646Z.834031e5f9a4407a.a488be9050a3cd89d11da5dabafc996b6b3570af&lang=ko&text=hello")


p body = response.parse
p body.values[2]
