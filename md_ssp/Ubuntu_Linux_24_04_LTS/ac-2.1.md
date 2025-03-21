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
    - name: accounts_passwords_pam_faillock_deny
      description: accounts_passwords_pam_faillock_deny
    - name: accounts_passwords_pam_faillock_enabled
      description: accounts_passwords_pam_faillock_enabled
    - name: accounts_passwords_pam_faillock_root_unlock_time
      description: accounts_passwords_pam_faillock_root_unlock_time
    - name: accounts_passwords_pam_faillock_unlock_time
      description: accounts_passwords_pam_faillock_unlock_time
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
  ac-02.01_odp:
    guidelines:
      - prose: 'automated mechanisms used to support the management of system accounts
          are defined; '
    alt-identifier: ac-2.1_prm_1
    profile-param-value-origin: <REPLACE_ME>
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: ac-02.01
---

# ac-2.1 - \[\] Automated System Account Management

## Control Statement

Support the management of system accounts using [automated mechanisms].

## Control guidance

Automated system account management includes using automated mechanisms to create, enable, modify, disable, and remove accounts; notify account managers when an account is created, enabled, modified, disabled, or removed, or when users are terminated or transferred; monitor system account usage; and report atypical system account usage. Automated mechanisms can include internal system functions and email, telephonic, and text messaging notifications.

## Control assessment_objective

the management of system accounts is supported using [automated mechanisms].

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: ac-2.1 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: ac-2.1 -->

#### Rules:

  - accounts_passwords_pam_faillock_deny
  - accounts_passwords_pam_faillock_enabled
  - accounts_passwords_pam_faillock_root_unlock_time
  - accounts_passwords_pam_faillock_unlock_time

#### Implementation Status: planned

______________________________________________________________________
