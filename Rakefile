require 'rake/testtask'

task :default => [:test]

desc "Todas las pruebas del test."
Rake::TestTask.new do |t|
    t.libs << "test"
    t.test_files = FileList['test/tc_*.rb']
end