class UserSerializer
  def initialize(user_obj)
    @user = user_obj
  end

  def to_json
    @user.to_json(:include => 
    {
      :courses => 
      {
        :include => 
        {
          :cards => {:except => [:updated_at, :created_at]}
        },
        :except => [:updated_at, :created_at]},
    }, 
    :except => [:updated_at])
  end
end