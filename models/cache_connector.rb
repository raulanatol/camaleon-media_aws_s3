class Plugins::MediaAwsS3::Models::CacheConnector < ElFinderS3::CacheConnector

  def initialize
    raw_client = Redis.new
    begin
      # Verify redis connection
      raw_client.exist('check_connection')
    rescue
      raw_client = Rails.cache
    end

    super(raw_client)
  end
end