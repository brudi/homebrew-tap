# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/custom_download_strategy"
class Cli < Formula
  desc "brudi CLI"
  homepage "https://brudi.com/"
  version "0.2.11"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/brudi/cli/releases/download/v0.2.11/cli_0.2.11_macOS.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "be9385ccbb55ea76e014d315ee50c85f08c22037bb99004f97bd2e8ccabe5cd7"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/brudi/cli/releases/download/v0.2.11/cli_0.2.11_linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "b7acde67b53a647c92dbe6c68ead88e9faeae3cedbc02db7ad443693ed74e3fc"
    end
  end

  def install
    bin.install "bin/brudi" => "brudi"
  end

  test do
    system "brudi --version"
  end
end
