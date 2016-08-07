require "./Otenki_C/version"
#yahoo.rbの読み込み
require "./Otenki_C/yahoo"
#google geocodeの読み込み
require "./Otenki_C/googlemap"
#表示用
require "./Otenki_C/rainfall"

module OtenkiC
    def otenki(zipcode)
        #郵便番号の取得

        #郵便番号から緯度と経度を取得
        lat, lng = googlemap(zipcode)
        #緯度経度から天気の情報を取得
        weatherResultHash = weather(lng,lat)
        #表示用
        rainfall(weatherResultHash)

    end
    module_function :otenki
end

puts "郵便番号を入力してください"
OtenkiC.otenki(gets.to_s)
