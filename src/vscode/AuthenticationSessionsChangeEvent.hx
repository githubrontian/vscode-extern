package vscode;

/**
 * An [event](#Event) which fires when an [AuthenticationSession](#AuthenticationSession) is added, removed, or changed.
 */
typedef AuthenticationSessionsChangeEvent = {
	/**
	 * The [authenticationProvider](#AuthenticationProvider) that has had its sessions change.
	 */
	final provider:AuthenticationProviderInformation;
}
