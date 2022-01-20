# This file is automatically generated by https://github.com/heroku/cli/blob/master/scripts/release/homebrew.js
# Do not update this file directly;
# Please update the template instead:
# https://github.com/heroku/cli/blob/master/scripts/release/homebrew/templates/heroku-node.rb
class CgNode < Formula
  desc "node.js dependency for CloudGraph"
  homepage "https://cloudgraph.dev"
  url "https://nodejs.org/download/release/v12.21.0/node-v12.21.0-darwin-x64.tar.xz"
  version "12.21.0"
  sha256 "4184cc5412cdf256996aa7f559859abc355b48f03144349cf8531b6bf0526f49"
  keg_only "cloudgraph-node is only used by CloudGraph CLI (cloudgraphdev/tap/cli), which explicitly requires from Cellar"

  def install
    bin.install buildpath/"bin/node"
  end

  def test
    output = system bin/"node", "version"
    assert output.strip == "v#{version}"
  end
end