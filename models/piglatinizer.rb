class PigLatinizer
    attr_accessor :words

    def initialize
        @words = words
    end


    def piglatinize(words)
      
        words_array = words.split(" ")
       
        words_array.map do |word|
            first_letter = word.slice(0)
            word_new = word[1..-1]
            second_letter = word_new.slice(0)
    
             if word[0].match(/[aeouiAEIOU]/)
                word = "#{word}way"
            elsif !word[0].match(/[aeouiAEIOU]/) && !word[1].match(/[aeouiAEIOU]/) && !word[2].match(/[aeouiAEIOU]/)
                con_clust_three = word[3..-1]
                third_letter = word_new.slice(1)
                word = "#{con_clust_three}#{first_letter}#{second_letter}#{third_letter}ay"
            elsif !word[0].match(/[aeouiAEIOU]/) && !word[1].match(/[aeouiAEIOU]/)
                con_clust_two = word[2..-1]
                word = "#{con_clust_two}#{first_letter}#{second_letter}ay" 
            elsif !word[0].match(/[aeouiAEIOU]/)
                word = "#{word_new}#{first_letter}ay"
            end
        end.join(" ")
    end

    
end