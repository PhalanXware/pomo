# coding: utf-8
module Pomo
  module Util
    # count size (support )
    def print_size(string)
      string.each_char.map{|c| c.bytesize == 1 ? 1 : 2}.reduce(0, &:+)
    end

    # padding
    def pad_to_print_size(string, size, right = false)
      padding_size = size - print_size(string)
      padding_size = 0 if padding_size < 0
      padding_spaces = ' ' * padding_size
      if right
        padding_spaces + string
      else
        string + padding_spaces
      end
    end
  end
end
