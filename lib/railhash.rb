require 'digest'

module RailHash
  
  #Digest data using sha512
  def get_hash(data, salted=true)
    if salted
      salt = Digest::SHA512.hexdigest( rand().to_s + Time.now.to_f.to_s + Process.pid.to_s )
      return Digest::SHA512.hexdigest( data + ":" + salt )
    else
      return Digest::SHA512.hexdigest( data )
    end
  end
  
  #Verify if hash was generated from the data
  def verify(data, hash, salted=true)
    if salted
      digest.split! ":"
      return Digest::SHA512.hexdigest( data + ":" + digest[1] ) == digest[0]
    else
      return Digest::SHA512.hexdigest( data ) == hash
    end
  end
  
end
