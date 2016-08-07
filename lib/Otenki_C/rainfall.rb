rainfall(weatherResultHash)
    rainfall = weatherResultHash["Feature"][0]["Property"]["WeatherList"]["Weather"][0]["Rainfall"]
    if rainfall == 0.0
        puts "雨は降っていません"
    elsif rainfall < 0.5
        puts "霧雨です"
    elsif rainfall < 3.0
        puts "弱い雨です"
    elsif rainfall < 10.0
        puts "雨です"
    elsif rainfall < 20.0
        puts "やや強い雨です"
    elsif rainfall < 30.0
        puts "強い雨です"
    elsif rainfall < 50.0
        puts "激しい雨です"
    elsif rainfall < 80.0
        puts "非常に激しい雨です"
　　else
        print("猛烈な雨です")
    end
end
