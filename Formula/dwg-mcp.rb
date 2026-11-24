class DwgMcp < Formula
  desc "MCP server for DWG ingestion: AutoCAD drawings as data for AI agents"
  homepage "https://github.com/aileron-tech/dwg-mcp"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aileron-tech/dwg-mcp/releases/download/v0.1.1/dwg-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "b332b2f041eabbd241a88e54f85de545a6e4e051d79e9d30ac7a035bbcc3edfc"
    end
    on_intel do
      url "https://github.com/aileron-tech/dwg-mcp/releases/download/v0.1.1/dwg-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "71260ca4b79c7b4b860f8b6caf97f08d0db2f3364e28ba4be827a36913c93a69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aileron-tech/dwg-mcp/releases/download/v0.1.1/dwg-mcp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c0713d15ce70a4c48dee057453168a061f548b8749e30b73ba0d7fec0dbe2f02"
    end
    on_intel do
      url "https://github.com/aileron-tech/dwg-mcp/releases/download/v0.1.1/dwg-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "afd5e99e026b8c3fa7e662ff5c476fb70d65de30e5819248d8c30a1e1f388c9e"
    end
  end

  def install
    bin.install "dwg-mcp"
  end

  test do
    assert_match "dwg-mcp #{version}", shell_output("#{bin}/dwg-mcp --version")
  end
end
