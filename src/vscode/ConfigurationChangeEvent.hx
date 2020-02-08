package vscode;

/**
 * An event describing the change in Configuration
 */
typedef ConfigurationChangeEvent = {
	/**
	 * Returns `true` if the given section is affected in the provided scope.
	 *
	 * @param section Configuration name, supports _dotted_ names.
	 * @param scope A scope in which to check.
	 * @return `true` if the given section is affected in the provided scope.
	 */
	function affectsConfiguration(section:String, ?scope:ConfigurationScope):Bool;
}
