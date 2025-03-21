---
x-trestle-add-props: []
  # Add or modify control properties here
  # Properties may be at the control or part level
  # Add control level properties like this:
  #   - name: ac1_new_prop
  #     value: new property value
  #
  # Add properties to a statement part like this, where "b." is the label of the target statement part
  #   - name: ac1_new_prop
  #     value: new property value
  #     smt-part: b.
  #
x-trestle-comp-def-rules:
  Ubuntu_Linux_24.04_LTS:
    - name: accounts_password_pam_unix_enabled
      description: accounts_password_pam_unix_enabled
    - name: accounts_root_gid_zero
      description: accounts_root_gid_zero
    - name: accounts_umask_etc_bashrc
      description: accounts_umask_etc_bashrc
    - name: accounts_umask_etc_login_defs
      description: accounts_umask_etc_login_defs
    - name: accounts_umask_etc_profile
      description: accounts_umask_etc_profile
    - name: accounts_umask_root
      description: accounts_umask_root
    - name: ensure_pam_wheel_group_empty
      description: ensure_pam_wheel_group_empty
    - name: ensure_root_access_controlled
      description: ensure_root_access_controlled
    - name: file_groupowner_sshd_config
      description: file_groupowner_sshd_config
    - name: file_owner_sshd_config
      description: file_owner_sshd_config
    - name: file_permissions_sshd_config
      description: file_permissions_sshd_config
    - name: file_permissions_sshd_private_key
      description: file_permissions_sshd_private_key
    - name: file_permissions_sshd_pub_key
      description: file_permissions_sshd_pub_key
    - name: groups_no_zero_gid_except_root
      description: groups_no_zero_gid_except_root
    - name: no_invalid_shell_accounts_unlocked
      description: no_invalid_shell_accounts_unlocked
    - name: no_shelllogin_for_systemaccounts
      description: no_shelllogin_for_systemaccounts
    - name: sshd_limit_user_access
      description: sshd_limit_user_access
    - name: use_pam_wheel_group_for_su
      description: use_pam_wheel_group_for_su
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: ac-06
---

# ac-6 - \[\] Least Privilege

## Control Statement

Employ the principle of least privilege, allowing only authorized accesses for users (or processes acting on behalf of users) that are necessary to accomplish assigned organizational tasks.

## Control guidance

Organizations employ least privilege for specific duties and systems. The principle of least privilege is also applied to system processes, ensuring that the processes have access to systems and operate at privilege levels no higher than necessary to accomplish organizational missions or business functions. Organizations consider the creation of additional processes, roles, and accounts as necessary to achieve least privilege. Organizations apply least privilege to the development, implementation, and operation of organizational systems.

## Control assessment_objective

the principle of least privilege is employed, allowing only authorized accesses for users (or processes acting on behalf of users) that are necessary to accomplish assigned organizational tasks.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: ac-6 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: ac-6 -->

#### Rules:

  - accounts_password_pam_unix_enabled
  - accounts_root_gid_zero
  - accounts_umask_etc_bashrc
  - accounts_umask_etc_login_defs
  - accounts_umask_etc_profile
  - accounts_umask_root
  - ensure_pam_wheel_group_empty
  - ensure_root_access_controlled
  - file_groupowner_sshd_config
  - file_owner_sshd_config
  - file_permissions_sshd_config
  - file_permissions_sshd_private_key
  - file_permissions_sshd_pub_key
  - groups_no_zero_gid_except_root
  - no_invalid_shell_accounts_unlocked
  - no_shelllogin_for_systemaccounts
  - sshd_limit_user_access
  - use_pam_wheel_group_for_su

#### Implementation Status: planned

______________________________________________________________________
