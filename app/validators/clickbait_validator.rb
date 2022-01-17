class ClickbaitValidator < ActiveModel::Validator
    def validate(record)
        if record.title && !record.title[/Won't Believe|Secret|Top|Guess/]
            record.errors[:title] << "Title is not clickbait"
        end
    end
end
