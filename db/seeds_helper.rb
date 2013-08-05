
# Helper

def glff(path,line)
  get_line_from_file(path,line)
end


def get_line_from_file(path, line)
  result = nil

  File.open(path, "r") do |f|
    while line > 0
      line -= 1
      result = f.gets
    end
  end

  return result
end
