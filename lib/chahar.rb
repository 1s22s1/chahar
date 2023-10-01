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

  def ==(other)
    @hash == other.instance_variable_get(:@hash)
  end

  def &(other)
    if other.is_a?(self.class)
      self.class.new(@hash.keys & other.instance_variable_get(:@hash).keys)
    else
      self.class.new(@hash.keys & other)
    end
  end

  def to_s
    "#<#{self.class}: {#{@hash.keys.join(', ')}}>"
  end

  alias inspect to_s

  def to_chahar
    self
  end

  def add(o)
    @hash[o] = true

    self
  end

  def merge(*enums)
    enums.map { |enum| @hash[enum] = true }

    self
  end
end

module Enumerable
  def to_chahar
    Chahar.new(self)
  end
end
