users = [
  User.create(:name => 'Денис Лифанов', :email => 'email1@dot.com', :password => '123456', :password_confirmation => '123456'),
  User.create(:name => 'Максим Филатов', :email => 'email2@dot.com', :password => '123456', :password_confirmation => '123456'),
  User.create(:name => 'Евгений Большаков', :email => 'email3@dot.com', :password => '123456', :password_confirmation => '123456')
]

Meeting.create(
  :title => 'Rack, Warden, Plataformatec',
  :date  => Date.parse('18 June 2010'),
  :description => 'Вероятно, практически все Rails-разработчики знают Жозе Валима и бразильскую компанию Plataforma Tecnologia хотя бы потому, что пользуются одним или несколькими инструментами, которые они разработали. Они сильно облегчают жизнь, берут на себя большую часть рутинной работы, но в то же время ненавязчивы и конфигурируемы (например, по понятным причинам разработаны с обязательной поддержкой I18N).',
  :published => true,
  :presenters => users
)

Meeting.create(
  :title => 'Настройка VDS от Locum.ru',
  :date  => Date.parse('12 February 2010'),
  :description => 'Пошаговая инструкция и конфигурационные файлы',
  :published => true
)
