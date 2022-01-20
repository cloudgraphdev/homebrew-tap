class CloudgraphNode < Formula
  desc "node.js dependency for CloudGraph"
  homepage "https://cloudgraph.dev"
  url "https://nodejs.org/download/release/v16.0.0/node-v16.0.0-darwin-x64.tar.xz"
  version "16.0.0"
  sha256 "66ecffa48b98cf1ca4d038b42b74f05bfc4d31681e2aa43a1ba50919ea23823b"
  keg_only "cg-node is only used by CloudGraph CLI (cloudgraphdev/tap/cli), which explicitly requires from Cellar"

  def install
    bin.install buildpath/"bin/node"
  end

  def test
    output = system bin/"node", "version"
    assert output.strip == "v#{version}"
  end
end