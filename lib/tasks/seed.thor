require './config/environment'

class Seed < Thor
  desc 'cities', 'Generates master cities data'
  def cities
    response    = get(:prefectures)
    prefectures = Oj.load(response.body.to_s)['result']
    prefectures.each do |prefecture|
      pref_code = prefecture['prefCode']
      pref_name = prefecture['prefName']

      pref = ::Prefecture.find_or_initialize_by(code: pref_code,
                                                name: pref_name)

      response = get(:cities, prefCode: pref_code)
      cities   = Oj.load(response.body.to_s)['result']
      cities.each do |city|
        city_code = city['cityCode']
        city_name = city['cityName']
        city_flag = city['bigCityFlag']

        pref.cities.build(code:          city_code,
                          name:          city_name,
                          big_city_flag: city_flag)
      end

      pref.save!
    end
  end

  desc 'populations', 'Generates master populations data'
  def populations
    ::City.all.find_each do |city|
      params   = { prefCode: city.prefecture.code,
                   cityCode: city.code }
      response = get('population/composition/perYear', params)
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
