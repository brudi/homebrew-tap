# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "brudi CLI"
  homepage "https://brudi.com/"
  version "0.2.6"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/brudi/brudi-cli/releases/v0.2.6/cli_0.2.6_macOS.tar.gz"
    sha256 "49740d2d8fe79d1e7516590836114b497687e745ee0956b9befdc91c4577a230"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "http://github.com/brudi/brudi-cli/releases/v0.2.6/cli_0.2.6_linux.tar.gz"
      sha256 "efe8eda426b949eb10862e471d7041f255ec50f8484f64079659c319be0ebb3f"
    end
  end
  
  next "https://github.com/brudi/brudi-cli.git"
  
  depends_on "docker"
  depends_on "git"

  def install
    bin.install "brudi"
  end

  test do
    system "brudi --version"
  end
end
