Pod::Spec.new do |s|
  s.name      = "LabelTextFormatter"
  s.version   = "1.0.0"
  s.swift_version = "4.0"
  s.summary   = "UILabel and NSAttributedString extensions that allow you to simply set text to the label."
  s.description  = "UILabel and NSAttributedString extensions which allows you to set label text from AttributedString without the need to create any instances. Allows you to combine several AttributedStrings into one."
  s.homepage  = "https://github.com/idapgroup/LabelTextFormatter"
  s.license   = { :type => "New BSD", :file => "LICENSE" }
  s.author    = { "IDAP Group" => "hello@idapgroup.com" }
  s.source    = { :git => "https://github.com/idapgroup/LabelTextFormatter.git",
                  :tag => s.version.to_s }

  # Platform setup
  s.requires_arc          = true
  s.ios.deployment_target = '9.0'

  # Preserve the layout of headers in the Module directory
  s.header_mappings_dir   = 'Source'
  s.source_files          = 'Source/**/*.{swift,h,m,c,cpp}'
end
