# frozen_string_literal: true

require_relative 'chahar/version'

class Chahar
  def initialize(enum = nil)
    @hash = Hash.new(false)

    enum.nil? and return

    enum.map { |e| @hash[e] = true }
  end

  def size
    @hash.size
  end
end
