class DwgMcp < Formula
  desc "MCP server for DWG and DXF ingestion: AutoCAD drawings as data for AI agents"
  homepage "https://github.com/aileron-tech/dwg-mcp"
  license "MPL-2.0"

  on_macos do
    on_arm do
      url "https://github.com/aileron-tech/dwg-mcp/releases/download/v0.2.0/dwg-mcp-aarch64-apple-darwin.tar.gz"
      sha256 "c3abf8a4b12bfc5a55f0a195f5facf9ece5f67ef930b54b0bc378da031af4a52"
    end
    on_intel do
      url "https://github.com/aileron-tech/dwg-mcp/releases/download/v0.2.0/dwg-mcp-x86_64-apple-darwin.tar.gz"
      sha256 "ef5385ef8804cf5259e1f784d46934e50344b48304ad4f026fad3199e4d6a47c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/aileron-tech/dwg-mcp/releases/download/v0.2.0/dwg-mcp-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d4d195d972697ad9bed741984cbcac3bf6784e41fcfbdb6531dcf0b710ffdaea"
    end
    on_intel do
      url "https://github.com/aileron-tech/dwg-mcp/releases/download/v0.2.0/dwg-mcp-x86_64-unknown-linux-musl.tar.gz"
      sha256 "61dff5c9ce75540e3ae4e088cb90dc6e8d8e4897eab72558e77b0b7bc298c65b"
    end
  end

  def install
    bin.install "dwg-mcp"
  end

  test do
    assert_match "dwg-mcp #{version}", shell_output("#{bin}/dwg-mcp --version")
  end
end
