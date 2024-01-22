# lib/tasks/delete_all_data.rake

namespace :db do
  desc 'Delete all data from all tables'
  task delete_all_data: :environment do
    ActiveRecord::Base.connection.tables.each do |table_name|
      klass = table_name.singularize.camelize.constantize
      klass.delete_all
    end
  end
end
