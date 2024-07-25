#PEDAC

#Problem
#you have a bank of switches before you, numbered from
#1 to n
#each switch is connected to exactly one light
#that is initially off. You walk down the row of switches
#and toggle every one of them.
#You go back to the beginning, and on the second pass
#You toggle switches 2, 4, 6 and so on
#On the third pass, you go back again to the beginning
#and toggle switches 3, 6, 9, and so on.
#You repeat this process and keep going until you
#have been through n repetitions

#Write a method that takes one argument, the total 
#number of switches, and and returns an Array
#that identifies which lights are on after n reps.

#Example with n = 5 lights. 
# round 1: every light is turned on
# round 2: lights 2 and 4 are now off; 1, 3, 5 are on
# round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
# round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
# round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

#The result is that 2 lights are left on, lights 1 and 4
#The return value is [1, 4].
#With 10 lights, 3 lights are left on: lights 1, 4, and 9. Return value is [1, 4, 9].

#Example/Test Case
#p lights(5) = [1, 4]
#p lights(10) = [1, 4, 9]

#Data Structure
#Starting with: Integer object as input
#Intermediate: Hash object with key as number, value as on or off
#End: Array object containing Integer object elements of the light that's on

#Algorithm

#def `toggle` method (takes 3 args, `hash_obj`, , and `key`)
  #if the key in `hash_obj` is equal to "off"
    #reassign the value associated with the key to "on"
  #else the key in `hash_obj` is equal to "on"
    #reassign the value associated with the key to off


#initialize `lights` method
  #initialize Hash object `hsh` to {}
  #initialize var `range` to 1..arg
  #loop through each num in `range`
  #initialize each num as a key in `hsh`
  #assign "off" as the value associated with each key
  
  #loop through each key:value pair in `hsh` n times
  #initialize var `counter` to 1
  #invoke `toggle` in `hsh` if the key is a multiple of counter
  #increment counter by 1
  
  #return an array of the keys with values 'on'
    #initialize var `final_arr` to []
    #invoke each_pair on hsh
    #append the key to final_arr if the value is equal to on
  


#Code
def toggle!(hash_obj, key)
  if hash_obj[key] == "off"
    hash_obj[key] = "on"
  else
    hash_obj[key] = "off"
  end
end

def lights(n)
  hsh = {}
  range = 1..n
  
  range.each do |num|
    hsh[num] = "off"
  end
  
  round = 1
  
  n.times do |num|
    hsh.each_pair do |key, value|
      toggle!(hsh, key) if key % round == 0
    end
  round += 1
  end

  final_arr = []
  hsh.each_pair do |key, value|
    final_arr << key if value == "on"
  end
  
  p final_arr
  
end

lights(5)
lights(10)