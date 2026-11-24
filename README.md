# Homebrew tap for dwg-mcp

[dwg-mcp](https://github.com/aileron-tech/dwg-mcp) is an MCP server for drawing ingestion. The tap currently installs v0.2.0, which reads AutoCAD DWG and DXF into PNG previews, readable tiles, native text and metadata. SVG support is available from the server repository for source builds.

```sh
brew tap aileron-tech/dwg-mcp
brew install dwg-mcp
```

Recent Homebrew versions ask you to trust a third-party tap before they load
its formula. If `brew install` says the tap is untrusted, run this once and
install again:

```sh
brew trust aileron-tech/dwg-mcp
```

Then connect it to a client, for example Claude Code:

```sh
claude mcp add dwg -- dwg-mcp
```

The formula installs the prebuilt binary of the latest release (macOS Apple
Silicon and Intel, Linux x64 and arm64). To update the formula for a new
release, change the four URLs and their `sha256` values; each
release archive has a `.sha256` file next to it.
