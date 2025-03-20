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
x-trestle-set-params:
  # You may set values for parameters in the assembled SSP by adding
  #
  # ssp-values:
  #   - value 1
  #   - value 2
  #
  # below a section of values:
  # The values list refers to the values in the resolved profile catalog, and the ssp-values represent new values
  # to be placed in SetParameters of the SSP.
  #
  ac-05_odp:
    guidelines:
      - prose: duties of individuals requiring separation are defined;
    alt-identifier: ac-5_prm_1
    profile-param-value-origin: <REPLACE_ME>
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: ac-05
---

# ac-5 - \[\] Separation of Duties

## Control Statement

- \[a.\] Identify and document [duties of individuals] ; and

- \[b.\] Define system access authorizations to support separation of duties.

## Control guidance

Separation of duties addresses the potential for abuse of authorized privileges and helps to reduce the risk of malevolent activity without collusion. Separation of duties includes dividing mission or business functions and support functions among different individuals or roles, conducting system support functions with different individuals, and ensuring that security personnel who administer access control functions do not also administer audit functions. Because separation of duty violations can span systems and application domains, organizations consider the entirety of systems and system components when developing policy on separation of duties. Separation of duties is enforced through the account management activities in [AC-2](#ac-2) , access control mechanisms in [AC-3](#ac-3) , and identity management activities in [IA-2](#ia-2), [IA-4](#ia-4) , and [IA-12](#ia-12).

## Control assessment_objective

- \[AC-05a.\]  [duties of individuals] are identified and documented;

- \[AC-05b.\] system access authorizations to support separation of duties are defined.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: ac-5 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: ac-5 -->

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
