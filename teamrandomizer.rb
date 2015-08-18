class TeamRandomizer
  attr_reader :teams

  def initialize
    @heads = []
    @teams = []
    @head_count = 0
    @team_count = 0
    @loose_head_count = 0
    @team_head_count = 0

    @testnames = "Alfa,Bravo,Coca,Delta,Echo,Foxtrot,Golf,Hotel,India,Juliett,Kilo,Lima,Metro,Nectar,Oscar,Papa,Quebec,Romeo,Sierra,Tango,Union,Victor,Whisky,Extra,Yankee,Zulu"
  end

  def generate(names, team_count)
    # Uncomment line below to use dummy data.
    #names = @testnames
    # --------------------------------------

    @team_count = team_count.to_i
    return unless prep_names_array?(names)
    prep_teams_array @team_count
    get_team_head_count
    get_loose_head_count
    make_teams
    assign_loose_heads_in_team true
    # assign_loose_heads_in_team false

    puts "Team created success!"
    @teams.count.times {|num| print @teams[num],"\n"}
  end

  private

  def prep_names_array?(names)
    @heads.clear unless @heads.nil?
    @heads = names.split(',')
    @heads.map! {|name| name.strip}
    @head_count = @heads.count
    @team_count > @head_count || @team_count < 1 ? false : true
  end

  def prep_teams_array(team_count)
    @teams.clear unless @teams.nil?
    team_count.times {|team_num| @teams[team_num] = []}
  end

  def make_teams
    @teams.count.times {|team_num|
      @team_head_count.times {|head_num|
        @teams[team_num] <<
        @heads.delete(@heads.sample) unless @heads.sample.nil?
      }
    }
  end

  def get_team_head_count
    @team_head_count = @head_count / @team_count
  end

  def get_loose_head_count
    @loose_head_count = @team_count % @head_count
  end

  def assign_loose_heads_in_team(at_random)
    @heads.count.times {|head_num|
      @teams[at_random ? rand(0...@team_count) : head_num] <<
      @heads.delete(@heads.sample) unless @heads.sample.nil?
    }
  end
end
