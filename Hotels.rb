  puts 'There are N hotels along the beautiful Adriatic coast. Each hotel has its value in Euros. Sroljo has won M Euros on the lottery. Now he wants to buy a sequence of consecutive hotels, such that the sum of the values of these consecutive hotels is as great as possible - but not greater than M. You are to calculate this greatest possible total value.'
  puts 'Input N and M'

  N = gets.chomp.to_i
  M = gets.chomp.to_i

  if (1 <= N && N <= 300000 && 1 <= M && M <= 2**31)
    arr = Array.new(N)
    puts 'Input price'
    N.times do |i|
      arr[i] = gets.chomp.to_i
      puts 'Need natural numbers less than 10^6' if arr[i] > 10**6
    end
    l=0
    max_sum = 0
    sum = 0
    N.times do |i|
      sum = sum + arr[i]
      while (sum > M) do
        sum = sum - arr[l]
        l += 1
        if (max_sum<=sum && sum<=M)  
          max_sum = sum
          break 
        end       
      end
      max_sum = sum if (max_sum<=sum && sum<=M)
    end
    puts max_sum
  else
    puts 'In the first line of the input there are integers N and M (1 ≤ N ≤ 300 000, 1 ≤ M < 2^31).'
  end
