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
  ac-06.05_odp:
    guidelines:
      - prose: personnel or roles to which privileged accounts on the system are to
          be restricted is/are defined;
    alt-identifier: ac-6.5_prm_1
    profile-param-value-origin: <REPLACE_ME>
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: ac-06.05
---

# ac-6.5 - \[\] Privileged Accounts

## Control Statement

Restrict privileged accounts on the system to [personnel or roles].

## Control guidance

Privileged accounts, including super user accounts, are typically described as system administrator for various types of commercial off-the-shelf operating systems. Restricting privileged accounts to specific personnel or roles prevents day-to-day users from accessing privileged information or privileged functions. Organizations may differentiate in the application of restricting privileged accounts between allowed privileges for local accounts and for domain accounts provided that they retain the ability to control system configurations for key parameters and as otherwise necessary to sufficiently mitigate risk.

## Control assessment_objective

privileged accounts on the system are restricted to [personnel or roles].

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: ac-6.5 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: ac-6.5 -->

#### Rules:

  - package_sudo_installed
  - sshd_disable_root_login
  - sudo_add_use_pty
  - sudo_remove_no_authenticate
  - sudo_require_authentication
  - sudo_require_reauthentication

#### Implementation Status: planned

______________________________________________________________________
