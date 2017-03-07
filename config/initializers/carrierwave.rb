CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY'],
      :region                 => "us-west-2",
      :path_style             => true,
  }

  config.fog_public     = false
  config.fog_attributes = {'Cache-Control' => 'public, max-age=86400'}

  case Rails.env
    when 'production'
      config.storage = :fog
      config.fog_directory = 'bemen.com'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/bemen.com'
    when 'staging'
      config.storage = :fog
      config.fog_directory = 'stg.bemen.com'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/stg.bemen.com'
    when 'development'
      config.storage = :fog
      config.fog_directory = 'dev.bemen.com'
      config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/dev.bemen.com'
    when "test"
      config.stotage = :file
  end
end
