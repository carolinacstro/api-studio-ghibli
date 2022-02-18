Ghibli.delete_all 

250.times do 
    Ghibli.create phrase: Faker::JapaneseMedia::StudioGhibli.quote
end 