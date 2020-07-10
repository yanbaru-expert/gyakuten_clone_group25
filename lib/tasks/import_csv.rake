require "./db/lib/import"

namespace :import_csv do
  desc "「aws_text_data.csv」 を 「aws_texts」 テーブルにインポートするタスク"

  task aws_texts: :environment do
    path = File.join Rails.root,"db/csv_data/aws_text_data.csv"
    Import.csv_data(path: path)
  end
end
