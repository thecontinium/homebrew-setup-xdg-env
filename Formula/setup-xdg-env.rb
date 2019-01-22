class SetupXdgEnv< Formula
  homepage 'https://github.com/thecontinium/homebrew-setup-xdg-env/'
  url 'https://github.com/thecontinium/homebrew-setup-xdg-env.git'
  version '0.0.4'

  def install
	    pefix.install Dir["config/*.plist"]
  end

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
        <key>Label</key>
        <string>homebrew.mxcl.setup-xdg-env</string>
        <key>ProgramArguments</key>
        <array>
            <string>sh</string>
            <string>-c</string>
            <string>
                launchctl setenv XDG_CONFIG_HOME $HOME/.config
                launchctl setenv XDG_CACHE_HOME $HOME/.cache
                launchctl setenv XDG_DATA_HOME $HOME/.local/share
                launchctl setenv XDG_RUNTIME_DIR /tmp/run</string>
        </array>
        <key>RunAtLoad</key>
        <true/>
    </dict>
    </plist>
    EOS
  end
end

