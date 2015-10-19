class CountUpWorker
  include Sidekiq::Worker
  DURATION = 30

  def perform(start_num)
    logger = Logger.new(Rails.root.join('log/count_up.log'))
    DURATION.times do
      logger.info(start_num)
      start_num += 1
      sleep 1
    end
    logger.close
  end
end
