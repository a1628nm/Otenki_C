require "Otenki_C/version"
#yahoo.rbの読み込み
require "Otenki_C/yahoo"
#google geocodeの読み込み
require "Otenki_C/hogehoge"
#表示用
require "Otenki_C/piyopiyo"

module OtenkiC
    def otenki(add)
        #郵便番号の取得
        address　=　add
        #郵便番号から緯度と経度を取得
        
        #緯度経度から天気の情報を取得
        weatherResultHash = yahoo.weather(lng,lat)
        #表示用
        
    end
    module_function :otenki
end
