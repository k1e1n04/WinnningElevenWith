# 下記の三行は入れていた方がいいらしい
require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.production? || Rails.env.development?
    config.storage :fog
    config.fog_provider = 'fog/aws'
    config.fog_directory     =  'winningelevenwith'
    config.asset_host = 'https://s3.ap-northeast-1.amazonaws.com/winningelevenwith'
    config.fog_public = false
    config.fog_credentials = {
      # Amazon S3用の設定
      provider: 'AWS',
      region: 'ap-northeast-1',
      aws_access_key_id: 'AKIA4GIXPXKY4OIN5KUR',
      aws_secret_access_key: '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',
    }
  else
    config.storage :file
    config.enable_processing = false if Rails.env.test?
  end

  # 日本語ファイル名の設定
  CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
end