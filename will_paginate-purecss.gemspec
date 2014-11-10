# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "purecss_pagination/version"

Gem::Specification.new do |s|
  s.name        = "will_paginate-purecss"
  s.version     = PurecssPagination::VERSION
  s.authors     = ["Yuki Kodama"]
  s.email       = ["kodama@jvr.jp"]
  s.homepage    = "https://github.com/Japan-Venture-Research/will_paginate-purecss"
  s.summary     = %q{Integrates the Pure paginator control with will_paginate}
  s.description = %q{This gem integrates the Pure pagination component with the will_paginate pagination gem. Supports Rails and Sinatra. Based on will_paginate-bootstrap by Nick Dainty.}
  s.license     = "MIT"

  s.rubyforge_project = "will_paginate-purecss"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency "will_paginate", ">= 3.0.3"
end
