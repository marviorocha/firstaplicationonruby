module ApplicationHelper
# gravatar get user helper
  def gravatar_for(user, size)
    # include MD5 gem, should be part of standard ruby install
    require 'digest/md5'

    # create the md5 hash
    hash = Digest::MD5.hexdigest(user)
    size = size
    # compile URL which can be used in <img src="RIGHT_HERE"...
    image_src = "https://www.gravatar.com/avatar/#{hash}?s=#{size}"
  end

end
