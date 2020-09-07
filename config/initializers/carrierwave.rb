# 下記の三行は入れていた方がいいらしい
require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      # Amazon S3用の設定
      provider: 'AWS',
      region: ENV['ap-northeast-1'],
      aws_access_key_id: ENV['AKIA4GIXPXKY4OIN5KUR'],
      aws_secret_access_key: ENV['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'],
    }
    config.fog_directory     =  ENV['winningelevenwith']
    config.asset_host = 'https://s3.ap-northeast-1.amazonaws.com/winningelevenwith

    .amazonaws.com'
    config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" }
  end

  # 日本語ファイル名の設定
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
end