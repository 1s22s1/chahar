# frozen_string_literal: true

require_relative 'chahar/version'

class Chahar
  class << self
    def [](*ary)
      new(ary)
    end
  end

  def initialize(enum = nil, &block)
    @hash = Hash.new(false)

    enum.nil? and return

    if block_given?
      enum.map { |e| @hash[block.call(e)] = true }
    else
      enum.map { |e| @hash[e] = true }
    end
  end

  def size
    @hash.size
  end
end
