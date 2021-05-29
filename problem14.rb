#problem 14 project euler


def collatz(x)
    has2={}
    seq=[]
    seq<<x
    temp=x
    while(temp>1)
        if temp%2==0
            temp=(temp/2).to_i
            if has2.include? temp
                seq+=has2[temp]
                break
            else
                seq<<temp
            end    
        else
            temp=3*temp+1
            if has2.include? temp
                seq+=has2[temp]
                break
            else
                seq<<temp

            end
        end
    end
    has2[x]=seq        
    return seq.length()
end
num=0
greatest=0
(0..1000000).each do |i|
    c=collatz(i)
    if num<c
        num=c
        greatest=i
    end
end    
# puts '{0} has {1} elements. calculation time ={2} seconds.'.format(greatest,num,time.time()-start))
puts greatest
puts num