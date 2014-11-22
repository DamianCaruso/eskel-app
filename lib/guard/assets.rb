require 'guard'
require 'guard/plugin'

module Guard
  class Assets < Plugin
    def start
      UI.info "Guard::Assets is running."
      run
    end

    def run_all
      run
    end

    def reload
      run
    end

    def run_on_change(paths)
      puts "change: #{paths.inspect}"
      run
    end

  private

    def run
      system 'bundle exec rakep'
    end
  end
end