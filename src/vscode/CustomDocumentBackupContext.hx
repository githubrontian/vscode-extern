package vscode;

/**
 * Additional information used to implement [`CustomEditableDocument.backup`](#CustomEditableDocument.backup).
 */
typedef CustomDocumentBackupContext = {
	/**
	 * Suggested file location to write the new backup.
	 *
	 * Note that your extension is free to ignore this and use its own strategy for backup.
	 *
	 * If the editor is for a resource from the current workspace, `destination` will point to a file inside
	 * `ExtensionContext.storagePath`. The parent folder of `destination` may not exist, so make sure to created it
	 * before writing the backup to this location.
	 */
	final destination:Uri;
}
