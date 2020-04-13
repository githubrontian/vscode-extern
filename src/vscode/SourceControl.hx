package vscode;

/**
 * An source control is able to provide [resource states](#SourceControlResourceState)
 * to the editor and interact with the editor in several source control related ways.
 */
typedef SourceControl = {
	/**
	 * The id of this source control.
	 */
	var id(default, null):String;

	/**
	 * The human-readable label of this source control.
	 */
	var label(default, null):String;

	/**
	 * The (optional) Uri of the root of this source control.
	 */
	var rootUri(default, null):Null<Uri>;

	/**
	 * The [input box](#SourceControlInputBox) for this source control.
	 */
	var inputBox(default, null):SourceControlInputBox;

	/**
	 * The UI-visible count of [resource states](#SourceControlResourceState) of
	 * this source control.
	 *
	 * Equals to the total number of [resource state](#SourceControlResourceState)
	 * of this source control, if undefined.
	 */
	var ?count:Int;

	/**
	 * An optional [quick diff provider](#QuickDiffProvider).
	 */
	var ?quickDiffProvider:QuickDiffProvider;

	/**
	 * Optional commit template string.
	 *
	 * The Source Control viewlet will populate the Source Control
	 * input with this value when appropriate.
	 */
	var ?commitTemplate:String;

	/**
	 * Optional accept input command.
	 *
	 * This command will be invoked when the user accepts the value
	 * in the Source Control input.
	 */
	var ?acceptInputCommand:Command;

	/**
	 * Optional status bar commands.
	 *
	 * These commands will be displayed in the editor's status bar.
	 */
	var ?statusBarCommands:Array<Command>;

	/**
	 * Create a new [resource group](#SourceControlResourceGroup).
	 */
	function createResourceGroup(id:String, label:String):SourceControlResourceGroup;

	/**
	 * Dispose this source control.
	 */
	function dispose():Void;
}