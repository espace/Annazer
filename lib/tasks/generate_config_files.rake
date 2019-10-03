namespace :annazer do
  desc 'generate config files for gems'
  task :install, [:override] => [:environment] do |task, args|
    if git_repo_present? && no_existed_configuration_files?(args)
      sh('overcommit --install')
      Dir.glob("#{__dir__}/../annazer/config_files/*", File::FNM_DOTMATCH)[2..-1].each do |file|
        FileUtils.cp(file, Rails.root)
      end
    end
  end

  def git_repo_present?
    if File.directory?(".git")
      true
    else
      puts "Installation terminated. NO files has been generated."
      puts "NO Git Repo found, initiize a Git repo before running the task."
    end
  end

  def no_existed_configuration_files?(args)
    existed_files = %w[.rubocop.yml .overcommit.yml .csslintrc .eslintignore .eslintrc.yml .reek.yml].map{|f| [f, File.file?(f)]}.to_h
    if existed_files.values.reduce(&:|) && args[:override] != "force"
      puts "Installation terminated. NO files has been generated"
      puts "The following file(s) exist(s):"
      puts existed_files.select{|_,v| v }.keys.join(", ")
      puts "Run task with force option(i.e. 'rake annazer:install[force]' to OVERRIDE ALL of them"
      false
    else
      true
    end
  end
end
