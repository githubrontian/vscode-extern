package vscode;

/**
 * Represents an event describing the change in a [text editor's selections](#TextEditor.selections).
 */
typedef TextEditorSelectionChangeEvent = {
    /**
     * The [text editor](#TextEditor) for which the selections have changed.
     */
    var textEditor:TextEditor;

    /**
     * The [change kind](#TextEditorSelectionChangeKind) which has triggered this
     * event. Can be `undefined`.
     */
    var kind:TextEditorSelectionChangeKind;

    /**
     * The new value for the [text editor's selections](#TextEditor.selections).
     */
    var selections:Array<Selection>;
}
