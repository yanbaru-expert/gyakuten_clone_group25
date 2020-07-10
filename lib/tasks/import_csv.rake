require "./lib/import"
#require "./db/lib/import"から上記へ修正
namespace :import_csv do
  desc "「aws_text_data.csv」 を 「aws_texts」 テーブルにインポートするタスク"

  task aws_texts: :environment do
    Import.csv_data
  end
end
