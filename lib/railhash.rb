require 'digest'

module RailHash
  
  #Digest data using sha512
  def self.get_hash(data, salted=true)
    if salted
      salt = self.random
      return Digest::SHA512.hexdigest( data + salt ) + ":" + salt
    else
      return Digest::SHA512.hexdigest( data )
    end
  end
  
  #Verify if hash was generated from the data
  def self.verify(data, hash, salted=true)
    if salted
      digest = hash.split ":"
      return Digest::SHA512.hexdigest( data + digest[1] ) == digest[0]
    else
      return Digest::SHA512.hexdigest( data ) == hash
    end
  end
  
  #Get a random 512bit hex string
  def self.random
    Digest::SHA512.hexdigest( rand().to_s + Time.now.to_f.to_s + Process.pid.to_s )
  end
  
end
