module SmsSender

  class Command < Clamp::Command

    option "--version", :flag, "show version" do
      puts "sms-sender #{SmsSender::VERSION}"
      exit 0
    end

    option '--target', 'NUMBER', 'Phone number target', required: true
    parameter 'message', 'Message content', required: true

    def execute
      Twilio.connect(config.sid, config.auth_token)
      Twilio::Sms.message(config.caller_id, target, message)
    end

    private

      def config
        @config ||= begin
          Hashie::Mash.new(YAML.load_file(config_file))
        end
      end

      def config_file
        File.expand_path(File.join(ENV['HOME'], '.sms-sender.yml'))
      end
  end
end
