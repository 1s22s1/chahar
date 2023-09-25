# frozen_string_literal: true

require_relative 'chahar/version'

module Chahar
  def initialize(enum)
    @hash = Hash.new(false)
  end
end
