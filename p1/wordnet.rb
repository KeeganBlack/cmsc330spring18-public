require_relative "graph.rb"
require "pp"

class Synsets
    def initialize
      @words = Hash.new([]);
      @graph = Graph.new
    end

    def load(synsets_file)
          File.readlines(synsets_file, "\n") do |line|
          phrase = line.split(" ")
          return true;
        end
    end

    def addSet(synset_id, nouns)
        if(synset_id < 0) then
          return false;
        end
        if(nouns == nil) then
            return false;
        end
        if(@graph.hasVertex?(synset_id) == true) then
          return false;
        end
        @graph.addVertex(synset_id);
        @words[synset_id] = nouns;
        return true;
    end

    def lookup(synset_id)
        return @words[synset_id];
    end

    def findSynsets(to_find)
        raise Exception, "Not implemented"
    end
end

class Hypernyms
    def initialize
    end

    def load(hypernyms_file)
        raise Exception, "Not implemented"
    end

    def addHypernym(source, destination)
        raise Exception, "Not implemented"
    end

    def lca(id1, id2)
        raise Exception, "Not implemented"
    end
end

class CommandParser
    def initialize
        @synsets = Synsets.new
        @hypernyms = Hypernyms.new
    end

    def parse(command)
        raise Exception, "Not implemented"
    end
end
