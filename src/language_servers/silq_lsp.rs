use zed_extension_api as zed;
use zed::{Result, Command, LanguageServerId, Worktree};

pub struct SilqExtension;

impl zed::Extension for SilqExtension {
    fn new() -> Self {
        SilqExtension
    }

    fn language_server_command(
        &mut self,
        _language_server_id: &LanguageServerId,
        _worktree: &Worktree,
    ) -> Result<Command> {
        Ok(Command {
            command: "silq-lsp".to_string(),  
            args: vec![],                     
            env: vec![],                      
        })
    }
}

zed::register_extension!(SilqExtension);
