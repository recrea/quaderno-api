# Markdown
set :markdown_engine, :redcarpet
set :markdown,
    fenced_code_blocks: true,
    smartypants: true,
    disable_indented_code_blocks: true,
    prettify: true,
    tables: true,
    with_toc_data: true,
    no_intra_emphasis: true

# Assets
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'
set :fonts_dir, 'fonts'

# Activate the syntax highlighter
activate :syntax

activate :autoprefixer do |config|
  config.browsers = ['last 2 version', 'Firefox ESR']
  config.cascade  = false
  config.inline   = true
end

# Github pages require relative links
activate :relative_assets
set :relative_links, true

# Active Middleman Deploy
activate :deploy do |deploy|
  deploy.method = :rsync
  deploy.host = '95.85.63.165'
  deploy.path = '/var/www/developers/api'
  deploy.user = 'root' # no default
end

# Build Configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :gzip
end
