class Wrapper

  def wrap(string,limit)
    result=""
    line=""
    string.split.each do |word|
      if line.empty?
        line = word
      elsif (line+" "+word).length > limit
        result += (line+"\n")
        line=word
      else
        line += (" "+word)
      end
    end
    puts result + line
  end
end

string ="Lorem ipsum dolor sit amet, in sed iisque albucius vulputate, mea ne harum commune. Mea deleniti apeirian id, ut aperiri vituperata vituperatoribus mel, ferri dissentias te est. Est audiam perfecto efficiantur ea, pro no audiam scribentur. Ea appetere appellantur est, pro commune noluisse et, te impedit mandamus imperdiet mei. Aeque quaeque sit ex, case repudiare sit et. Sonet epicurei nam ut, zril evertitur dissentiet usu et, salutatus principes has eu."

wrapper = Wrapper.new
wrapper.wrap(string,30)
