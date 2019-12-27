package vscode;

/**
 * Represents an editor that is attached to a [document](#TextDocument).
 */
typedef TextEditor = {
	/**
	 * The document associated with this text editor. The document will be the same for the entire lifetime of this text editor.
	 */
	var document(default, never):TextDocument;

	/**
	 * The primary selection on this text editor. Shorthand for `TextEditor.selections[0]`.
	 */
	var selection:Selection;

	/**
	 * The selections in this text editor. The primary selection is always at index 0.
	 */
	var selections:Array<Selection>;

	/**
	 * The current visible ranges in the editor (vertically).
	 * This accounts only for vertical scrolling, and not for horizontal scrolling.
	 */
	var visibleRanges(default, never):Array<Range>;

	/**
	 * Text editor options.
	 */
	var options:TextEditorOptions;

	/**
	 * The column in which this editor shows. Will be `undefined` in case this
	 * isn't one of the main editors, e.g. an embedded editor, or when the editor
	 * column is larger than three.
	 */
	var ?viewColumn:ViewColumn;

	/**
	 * Perform an edit on the document associated with this text editor.
	 *
	 * The given callback-function is invoked with an [edit-builder](#TextEditorEdit) which must
	 * be used to make edits. Note that the edit-builder is only valid while the
	 * callback executes.
	 *
	 * @param callback A function which can create edits using an [edit-builder](#TextEditorEdit).
	 * @param options The undo/redo behavior around this edit. By default, undo stops will be created before and after this edit.
	 * @return A promise that resolves with a value indicating if the edits could be applied.
	 */
	function edit(callback:TextEditorEdit->Void, ?options:{undoStopBefore:Bool, undoStopAfter:Bool}):Thenable<Bool>;

	/**
	 * Insert a [snippet](#SnippetString) and put the editor into snippet mode. "Snippet mode"
	 * means the editor adds placeholders and additional cursors so that the user can complete
	 * or accept the snippet.
	 *
	 * @param snippet The snippet to insert in this edit.
	 * @param location Position or range at which to insert the snippet, defaults to the current editor selection or selections.
	 * @param options The undo/redo behavior around this edit. By default, undo stops will be created before and after this edit.
	 * @return A promise that resolves with a value indicating if the snippet could be inserted. Note that the promise does not signal
	 * that the snippet is completely filled-in or accepted.
	 */
	function insertSnippet(snippet:SnippetString,
		?location:EitherType<Position, EitherType<Range, EitherType<ReadonlyArray<Position>, ReadonlyArray<Range>>>>,
		?options:{undoStopBefore:Bool, undoStopAfter:Bool}):Thenable<Bool>;

	/**
	 * Adds a set of decorations to the text editor. If a set of decorations already exists with
	 * the given [decoration type](#TextEditorDecorationType), they will be replaced.
	 *
	 * @see [createTextEditorDecorationType](#window.createTextEditorDecorationType).
	 *
	 * @param decorationType A decoration type.
	 * @param rangesOrOptions Either [ranges](#Range) or more detailed [options](#DecorationOptions).
	 */
	function setDecorations(decorationType:TextEditorDecorationType, rangesOrOptions:EitherType<Array<Range>, Array<DecorationOptions>>):Void;

	/**
	 * Scroll as indicated by `revealType` in order to reveal the given range.
	 *
	 * @param range A range.
	 * @param revealType The scrolling strategy for revealing `range`.
	 */
	function revealRange(range:Range, ?revealType:TextEditorRevealType):Void;

	/**
	 * ~~Show the text editor.~~
	 *
	 * @deprecated Use [window.showTextDocument](#window.showTextDocument) instead.
	 *
	 * @param column The [column](#ViewColumn) in which to show this editor.
	 * This method shows unexpected behavior and will be removed in the next major update.
	 */
	@:deprecated("Use [window.showTextDocument](#window.showTextDocument)")
	function show(?column:ViewColumn):Void;

	/**
	 * ~~Hide the text editor.~~
	 *
	 * @deprecated Use the command `workbench.action.closeActiveEditor` instead.
	 * This method shows unexpected behavior and will be removed in the next major update.
	 */
	@:deprecated("Use the command `workbench.action.closeActiveEditor` instead.")
	function hide():Void;
}
