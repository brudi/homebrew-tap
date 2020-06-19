# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/custom_download_strategy"
class Cli < Formula
  desc "brudi CLI"
  homepage "https://brudi.com/"
  version "0.2.13"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/brudi/cli/releases/download/v0.2.13/cli_0.2.13_macOS.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "44211e04eb49a98a8b856a4f3e218b0686775474d2f466912ddcc2747276897d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/brudi/cli/releases/download/v0.2.13/cli_0.2.13_linux.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "257d6d0087b7ecac0b4be0542e4f0f6dc6c8327d0d8483d39be7a2fb48701143"
    end
  end

  def install
    bin.install "bin/brudi" => "brudi"
  end

  test do
    system "brudi --version"
  end
end
