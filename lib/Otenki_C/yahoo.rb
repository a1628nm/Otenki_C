require 'open-uri'
require'json'
#lat 緯度
#lng 経度
def weather(lng,lat)
    #API用のurlの生成
    url = "http://weather.olp.yahooapis.jp/v1/place?coordinates=#{lng},#{lat}&output=json&appid=dj0zaiZpPUk2ck1KQVhwV2pLQiZzPWNvbnN1bWVyc2VjcmV0Jng9OTE-"
    #Yahoo天気APIを呼び出し
    result = open(url)
    #Json=>hashに変換
    hash = JSON.load(result)
    
    #デバック用
    #puts url
    #puts hash["Feature"][0]["Property"]["WeatherList"]["Weather"][0]["Rainfall"]
    #最後の２つの配列と連想配列だけいじると値が取れる
    return hash
end