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
  sort-id: ac-03
---

# ac-3 - \[\] Access Enforcement

## Control Statement

Enforce approved authorizations for logical access to information and system resources in accordance with applicable access control policies.

## Control guidance

Access control policies control access between active entities or subjects (i.e., users or processes acting on behalf of users) and passive entities or objects (i.e., devices, files, records, domains) in organizational systems. In addition to enforcing authorized access at the system level and recognizing that systems can host many applications and services in support of mission and business functions, access enforcement mechanisms can also be employed at the application and service level to provide increased information security and privacy. In contrast to logical access controls that are implemented within the system, physical access controls are addressed by the controls in the Physical and Environmental Protection ( [PE](#pe) ) family.

## Control assessment_objective

approved authorizations for logical access to information and system resources are enforced in accordance with applicable access control policies.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: ac-3 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: ac-3 -->

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
