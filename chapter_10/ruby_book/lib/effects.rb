module Effects
    # 逆順
    def self.reverse
        ->(words) do
            words.split(' ').map(&:reverse).join(' ')
        end
    end

    # 繰り返し
    def self.echo(rate)
        ->(words) do
            words.chars.map {|c| c == ' ' ? c : c * rate}.join
        end
    end
end