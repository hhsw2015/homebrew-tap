# Generated with JReleaser 1.13.1 at 2025-03-08T08:37:26.187Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/hhsw2015/maestro/releases/download/cli-1.37.7/maestro.zip"
  version "1.37.7"
  sha256 "49c5d12276f361c99f7dd243b96e825112be0d9c741d18e5eaed0ce295825d1c"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.37.7", output
  end
end
