# platform = multi_platform_rhel, multi_platform_fedora

# Include source function library.
. /usr/share/scap-security-guide/remediation_functions

# Perform the remediation for both possible tools: 'auditctl' and 'augenrules'

fix_audit_watch_rule "auditctl" "/var/log/tallylog" "wa" "logins"
fix_audit_watch_rule "augenrules" "/var/log/tallylog" "wa" "logins"

fix_audit_watch_rule "auditctl" "/var/run/faillock/" "wa" "logins"
fix_audit_watch_rule "augenrules" "/var/run/faillock/" "wa" "logins"

fix_audit_watch_rule "auditctl" "/var/log/lastlog" "wa" "logins"
fix_audit_watch_rule "augenrules" "/var/log/lastlog" "wa" "logins"
