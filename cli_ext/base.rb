require 'terminal-table'

module SonicPass
  class CLI

    def initialize(pwds)
      @pwds = pwds
    end

    def self.call(*args, &block)
      new(*args, &block).print
    end

    def print
      rows = @pwds.each_with_index.map { |value, index| [index.next, value] }

      table = Terminal::Table.new :title => "Passwords generated", :rows => rows
      table.align_column(1, :center)
      table.align_column(2, :center)

      puts table
    end
  end
end