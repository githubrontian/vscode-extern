package vscode;

/**
 * A debug session.
 */
typedef DebugSession = {
	/**
	 * The unique ID of this debug session.
	 */
	var id(default, null):String;

	/**
	 * The debug session's name is initially taken from the [debug configuration](#DebugConfiguration).
	 * Any changes will be properly reflected in the UI.
	 */
	var type(default, null):String;

	/**
	 * The debug session's name from the [debug configuration](#DebugConfiguration).
	 */
	var name:String;

	/**
	 * The workspace folder of this session or `undefined` for a folderless setup.
	 */
	var ?workspaceFolder(default, null):WorkspaceFolder;

	/**
	 * The "resolved" [debug configuration](#DebugConfiguration) of this session.
	 * "Resolved" means that
	 * - all variables have been substituted and
	 * - platform specific attribute sections have been "flattened" for the matching platform and removed for non-matching platforms.
	 */
	var configuration(default, null):DebugConfiguration;

	/**
	 * Send a custom request to the debug adapter.
	 */
	function customRequest(command:String, ?args:Any):Thenable<Any>;
}
