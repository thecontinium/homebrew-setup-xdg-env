class SetupXdgEnv< Formula
  homepage 'https://github.com/thecontinium/homebrew-setup-xdg-env/'
  url 'https://github.com/thecontinium/homebrew-setup-xdg-env.git'
  version '0.0.5'

  def install
    prefix.install Dir["config/*.plist"]
  end

end

