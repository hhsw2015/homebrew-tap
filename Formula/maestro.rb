# Generated with JReleaser 1.13.1 at 2025-03-08T07:16:19.512932Z

class Maestro < Formula
  desc "The easiest way to automate UI testing for your mobile app"
  homepage "https://maestro.mobile.dev"
  url "https://github.com/hhsw2015/maestro/releases/download/cli-1.39.13/maestro.zip"
  version "1.39.13"
  sha256 "967e70cec7f1abb4404c6c99084eed9f01ce16ccaf107413138c947f04538581"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/maestro" => "maestro"
  end

  test do
    output = shell_output("#{bin}/maestro --version")
    assert_match "1.39.13", output
  end
end
