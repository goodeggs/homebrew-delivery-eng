class ChromedriverService < Formula
  desc "Adds a service for Chromedriver"
  homepage "https://sites.google.com/a/chromium.org/chromedriver/"
  url "https://raw.githubusercontent.com/goodeggs/homebrew-devops/master/.empty.tgz" # fake it
  sha256 "e12eac1d47d112ebc15cf6227dff3238d124cf9f85738ee20deff7eba945625f"
  version "1.0"

  #depends_on cask: 'chromedriver'

  bottle :unneeded

  def install
    # noop
  end

  plist_options :manual => "chromedriver"

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>homebrew.mxcl.chromedriver</string>
      <key>RunAtLoad</key>
      <true/>
      <key>KeepAlive</key>
      <false/>
      <key>ProgramArguments</key>
      <array>
        <string>#{opt_bin}/chromedriver</string>
      </array>
      <key>ServiceDescription</key>
      <string>Chrome Driver</string>
      <key>StandardErrorPath</key>
      <string>#{var}/log/chromedriver-error.log</string>
      <key>StandardOutPath</key>
      <string>#{var}/log/chromedriver-output.log</string>
    </dict>
    </plist>
    EOS
  end

end
