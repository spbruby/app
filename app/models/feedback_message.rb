class FeedbackMessage < MailForm::Base
  attribute :name, :validate => true
  attribute :email, :validate => /[^@]+@[^\.]+\.[\w\.\-]+/
  attribute :message, :validate => true

  append :remote_ip, :user_agent

  def headers
    {
      :to      => 'admin@spbruby.org',
      :subject => "Feedback from #{name}"
    }
  end
end
