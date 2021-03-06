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

    # 大文字化+!の付与
    def self.loud(level)
        ->(words) do
            words.split(' ').map {|word| word.upcase + '!' * level}.join(' ')
        end
    end
end