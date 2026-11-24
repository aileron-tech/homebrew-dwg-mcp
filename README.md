# Homebrew tap for dwg-mcp

[dwg-mcp](https://github.com/aileron-tech/dwg-mcp) is an MCP server for DWG
ingestion: it gives AI agents tools to turn AutoCAD drawings into page images,
readable tiles, a text layer and a metadata index.

```sh
brew tap aileron-tech/dwg-mcp
brew install dwg-mcp
```

Then connect it to a client, for example Claude Code:

```sh
claude mcp add dwg -- dwg-mcp
```

The formula installs the prebuilt binary of the latest release (macOS Apple
Silicon and Intel, Linux x64 and arm64). To update the formula for a new
release, change `version`, the four URLs and their `sha256` values; each
release archive has a `.sha256` file next to it.
