require 'rack/contrib/try_static'
require 'rack/contrib/not_found'

use Rack::Deflater

header_rules = [
  [['html'],  {'Content-Type'  => 'text/html; charset=utf-8'}],
  [['css'],   {'Content-Type'  => 'text/css'}],
  [['js'],    {'Content-Type'  => 'text/javascript'}],
  [['png'],   {'Content-Type'  => 'image/png'}],
  ['/assets', {'Cache-Control' => 'public, max-age=31536000'}],
]

use Rack::TryStatic, header_rules: header_rules,
                     root:         '_site',
                     try:          %w[ index.html /index.html ],
                     urls:         %w[ / ]

run Rack::NotFound.new('_site/404.html')
