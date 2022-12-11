# 下記の三行は入れていた方がいいらしい
require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.production? || Rails.env.development?
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_directory     =  ENV['AWS_FOG_DIRECTORY']
    config.asset_host = ENV['AWS_ASSER_HOST']
    config.fog_public = false
    config.fog_credentials = {
      # Amazon S3用の設定
      provider: 'AWS',
      region: 'ap-northeast-1',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    }
  else
    config.storage :file
    config.enable_processing = false if Rails.env.test?
  end

  # 日本語ファイル名の設定
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
end