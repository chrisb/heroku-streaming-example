require 'rubygems'
require 'bundler'

Bundler.require

class MyApp < Sinatra::Base
  get '/stream/:wait' do
    stream(:keep_open) do |out|
      seconds = params[:wait].to_i
      t0 = Time.now
      out << "Counting down!\n"
      (0..seconds).each do |i|
        out << " ... #{i}\n"
        sleep 1
      end
      out << "Oh yeah!"
    end
  end
end
