# Silq Language Extension for Zed

This extension provides **Silq language support** in Zed editor, including LSP integration for syntax highlighting, autocompletion, diagnostics, and more.

## Features

- LSP integration with `silq-lsp` language server
- Syntax highlighting (requires Tree-sitter grammar)
- Autocompletion, go-to-definition, hover information
- Error diagnostics and code actions

## Prerequisites

- Zed editor (latest version)
- `silq-lsp` binary installed and in your PATH
- [Silq compiler](https://silq.ethz.ch/) (optional, for full development workflow)

## Installation

1. **Build the extension**:
   ```bash
   cargo build --release
   ```

2. **Install in Zed**:
   ```bash
   # Copy to Zed extensions directory
   cp target/release/libsilq_extension.so ~/.config/zed/extensions/silq/
   
   # Or for macOS
   cp target/release/libsilq_extension.dylib ~/Library/Application\ Support/Zed/extensions/silq/
   ```

3. **Restart Zed**

## Building from Source

```bash
git clone https://github.com/yourusername/zed-silq-extension
cd zed-silq-extension
cargo build --release
```

## Configuration

Add to your `settings.json`:

```json
{
  "languages": {
    "Silq": {
      "language-servers": ["silq"]
    }
  }
}
```

## Language Server Setup

Install the Silq LSP server:

```bash
# Assuming silq-lsp is available via cargo or package manager
cargo install silq-lsp
# or download from official Silq releases
```

Verify installation:
```bash
silq-lsp --version
```

## File Extensions

The extension automatically recognizes:
- `.silq`

## Contributing

1. Fork the repository
2. Create feature branch: `git checkout -b feature/amazing-feature`
3. Commit changes: `git commit -m "Add amazing feature"`
4. Push and open PR

## License

MIT License. See [LICENSE](LICENSE) for details.

## Related Projects

- [Silq Language](https://silq.ethz.ch/)
- [Zed Extensions](https://zed.dev/docs/extensions)

***