use zed_extension_api as zed;
use language_servers::{SilqLSP, SilqLanguageServer};

pub struct SilqExtension {
    silq_language_server: Option<SilqLanguageServer>,
    silq_lsp: Option<SilqLSP>,
}

impl zed::Extension for SilqExtension {
    fn new() -> Self {
        Self {
            silq_language_server: None,
            silq_lsp: None,
        }
    }
}

zed::register_extension!(SilqExtension);
