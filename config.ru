require 'rack/rewrite'


use Rack::Rewrite do
  r301 'affinity-tech.herokuapp.com', 'www.affinity-tech.com'
  r301 %r{affinity-tech.herokuapp.com/(\S+)}, 'www.affinity-tech.com/$1'
end
