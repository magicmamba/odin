#stock picker

def stock_picker(a)
    buy = a[0]
    sell = a[1]
    buyi = 0
    selli = 1
    a.each_with_index do |val, ind|
        if ind == 0
            next
        end
        puts "VAL: " + val.to_s
        puts "BUY: " + buy.to_s
        puts "SEL: " + sell.to_s
        puts "IND: " + ind.to_s


        if (val < buy) && (ind <= selli) && ((sell - buy) <= (val - buy))
            buy = val
            buyi = ind
            sell = val
            selli = ind
            puts "BUY CHANGED" , buy

        elsif sell - buy < val - buy
            sell = val
            selli = ind

            puts "SELL CHANGED" , sell

        end
        puts
    end
    puts buyi, selli, buy, sell
end


stock_picker([17,3,6,9,15,8,6,1,10])

=begin
	> stock_picker([17,3,6,9,15,8,6,1,10])
    => [1,4]  # for a profit of $15 - $3 == $12
=end 
