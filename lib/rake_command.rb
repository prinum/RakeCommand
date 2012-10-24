require "rake_command/version"

module RakeCommand
  # Your code goes here...
  def self.path
    Dir.pwd
  end

  def self.rails3?
    File.exists?(File.join(path, 'script', 'rails'))
  end

  def self.bundler?
    File.exists?(File.join(path, 'Gemfile'))
  end

  def self.rake(command, environment = ENV['RAILS_ENV'])
    if RakeCommand.bundler?
      system("cd #{RakeCommand.path} && RAILS_ENV=#{environment} bundle exec rake #{command}")
    else
      system("cd #{RakeCommand.path} && RAILS_ENV=#{environment} rake #{command}")
    end
  end

end
