class Gate
    STATIONS = [:umeda, :juso, :mikuni]
    FARE = [150, 190]

    def initialize(name)
        @name = name
    end
    
    def enter(ticket)
        ticket.stamp(@name)
    end

    def exit(ticket)
        fare = calc_fare(ticket)
        # 運賃 <= 切符代 ? true : false
        fare <= ticket.fare
    end

    def calc_fare(ticket)
        from = STATIONS.index(ticket.stamped_at)
        to = STATIONS.index(@name)
        distance = to - from
        FARE[distance - 1]
    end
end