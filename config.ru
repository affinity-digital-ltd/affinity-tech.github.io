require 'rack/rewrite'


use Rack::Rewrite do
  r301 'http://affinity-tech.herokuapp.com', 'http://www.affinity-tech.com'
  r301 %r{http://affinity-tech.herokuapp.com/(\S+)}, 'http://www.affinity-tech.com/$1'
end
