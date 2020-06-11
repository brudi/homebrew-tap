# This file was generated by GoReleaser. DO NOT EDIT.
class Cli < Formula
  desc "brudi CLI"
  homepage "https://brudi.com/"
  version "0.2.8-rc.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/brudi/cli/releases/download/v0.2.8-rc.3/cli_0.2.8-rc.3_macOS.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "006929ce74927c628c4ac4e46c86230f623166f9a58f2ef7fff7395c8ce4bb15"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/brudi/cli/releases/download/v0.2.8-rc.3/cli_0.2.8-rc.3_linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "5ee043bf0907e704e2c706fda8b7bf98d6b487150fb8ea41eb7cde9386ff648c"
    end
  end
  
  depends_on "docker"
  depends_on "git"

  def install
    bin.install "brudi"
  end

  test do
    system "brudi --version"
  end
end
