Ghibli.delete_all 

100.times do 
    Ghibli.create phrase: Faker::JapaneseMedia::StudioGhibli.quote
end 