package vscode;

/**
 * An enumeration of all folding range kinds. The kind is used to categorize folding ranges.
 */
@:jsRequire("vscode", "FoldingRangeKind")
@:enum extern abstract FoldingRangeKind(Int) {
	/**
	 * Kind for folding range representing a comment.
	 */
	var Comment;

	/**
	 * Kind for folding range representing a import.
	 */
	var Imports;

	/**
	 * Kind for folding range representing regions (for example a folding range marked by `#region` and `#endregion`).
	 */
	var Region;
}
