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
    - name: package_sudo_installed
      description: package_sudo_installed
    - name: sshd_disable_root_login
      description: sshd_disable_root_login
    - name: sudo_add_use_pty
      description: sudo_add_use_pty
    - name: sudo_remove_no_authenticate
      description: sudo_remove_no_authenticate
    - name: sudo_require_authentication
      description: sudo_require_authentication
    - name: sudo_require_reauthentication
      description: sudo_require_reauthentication
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
  ac-06.02_odp:
    guidelines:
      - prose: security functions or security-relevant information, the access to
          which requires users to use non-privileged accounts to access non-security
          functions, are defined;
    alt-identifier: ac-6.2_prm_1
    profile-param-value-origin: <REPLACE_ME>
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: ac-06.02
---

# ac-6.2 - \[\] Non-privileged Access for Nonsecurity Functions

## Control Statement

Require that users of system accounts (or roles) with access to [security functions or security-relevant information] use non-privileged accounts or roles, when accessing nonsecurity functions.

## Control guidance

Requiring the use of non-privileged accounts when accessing nonsecurity functions limits exposure when operating from within privileged accounts or roles. The inclusion of roles addresses situations where organizations implement access control policies, such as role-based access control, and where a change of role provides the same degree of assurance in the change of access authorizations for the user and the processes acting on behalf of the user as would be provided by a change between a privileged and non-privileged account.

## Control assessment_objective

users of system accounts (or roles) with access to [security functions or security-relevant information] are required to use non-privileged accounts or roles when accessing non-security functions.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: ac-6.2 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: ac-6.2 -->

#### Rules:

  - package_sudo_installed
  - sshd_disable_root_login
  - sudo_add_use_pty
  - sudo_remove_no_authenticate
  - sudo_require_authentication
  - sudo_require_reauthentication

#### Implementation Status: planned

______________________________________________________________________
