use zed_extension_api as zed;

pub struct SilqExtension;

impl zed::Extension for SilqExtension {
    fn new() -> Self {
        Self
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &zed::LanguageServerId,
        _worktree: &zed::Worktree,
    ) -> zed::Result<zed::Command> {
        Ok(zed::Command {
            command: "silq-lsp".into(),
            args: vec![],
            env: vec![],
        })
    }
}

zed::register_extension!(SilqExtension);
