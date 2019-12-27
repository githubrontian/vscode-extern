package vscode;

/**
 * Comment mode of a [comment](#Comment)
 */
@:jsRequire("vscode", "CommentMode")
extern enum abstract CommentMode(Int) {
	/**
	 * Displays the comment editor
	 */
	var Editing;

	/**
	 * Displays the preview of the comment
	 */
	var Preview;
}
