require './config/environment'

class Seed < Thor
  # https://opendata.resas-portal.go.jp/docs/api/v1-rc.1/prefectures.html
  desc 'prefectures', 'Generates master prefectures data'
  def prefectures
    response    = get(:prefectures)
    prefectures = Oj.load(response.body.to_s)['result']
    prefectures.each do |prefecture|
      code = prefecture['prefCode']
      name = prefecture['prefName']
      pref = ::Prefecture.find_or_initialize_by(code: code, name: name)
      pref.save!
    end
  end

  # https://opendata.resas-portal.go.jp/docs/api/v1-rc.1/cities.html
  desc 'cities', 'Generates master cities data'
  def cities
    ::Prefecture.find_each do |pref|
      response = get(:cities, prefCode: pref.code)
      cities   = Oj.load(response.body.to_s)['result']
      cities.each do |city|
        code = city['cityCode']
        name = city['cityName']
        flag = city['bigCityFlag']
        pref.cities.build(code: code, name: name, big_city_flag: flag)
      end
      pref.save!
    end
  end

  # https://opendata.resas-portal.go.jp/docs/api/v1-rc.1/population/composition/perYear.html
  desc 'populations', 'Generates master populations data'
  def populations
    ::City.includes(:prefecture).find_each do |city|
      params      = { prefCode: city.prefecture.code,
                      cityCode: city.code }
      response    = get('population/composition/perYear', params)
      populations = Oj.load(response.body.to_s)['result']
      population  = populations&.dig('data', 0, 'data', 7, 'value').to_i
      city.update!(population: population)
    end
  end

  private

  def get(url, params = {})
    url = "https://opendata.resas-portal.go.jp/api/v1-rc.1/#{url}"
    HTTP.headers('X-API-KEY': ENV['RESAS_API_KEY'])
        .get(url, params: params)
  end
end
