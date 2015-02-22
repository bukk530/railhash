require 'digest'
require 'securerandom'

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
  
  self.md5(data)
    Digest::MD5(data)
  end
  
  #Verify if hash was generated from the data
  def self.verify(data, hash, salted=true)
    if salted
      digest = hash.split ":"
      return Digest::SHA512.hexdigest( data + digest[1] ).downcase == digest[0].downcase
    else
      return Digest::SHA512.hexdigest( data ).downcase == hash.downcase
    end
  end
  
  #Get a random 512bit hex string
  def self.random(secure=true)
    randstr = rand().to_s + Time.now.to_f.to_s + Process.pid.to_s
    randstr += SecureRandom.hex if secure
    Digest::SHA512.hexdigest( randstr )
  end
  
end
