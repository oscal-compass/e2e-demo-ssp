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
    - name: accounts_password_warn_age_login_defs
      description: accounts_password_warn_age_login_defs
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
  cm-7.1_prm_2:
    aggregates:
      - cm-07.01_odp.02
      - cm-07.01_odp.03
      - cm-07.01_odp.04
      - cm-07.01_odp.05
      - cm-07.01_odp.06
  cm-07.01_odp.01:
    guidelines:
      - prose: the frequency at which to review the system to identify unnecessary
          and/or non-secure functions, ports, protocols, software, and/or services
          is defined;
    alt-identifier: cm-7.1_prm_1
    profile-param-value-origin: <REPLACE_ME>
  cm-07.01_odp.02:
    profile-values:
      - <REPLACE_ME>
    profile-param-value-origin: <REPLACE_ME>
  cm-07.01_odp.03:
    profile-values:
      - <REPLACE_ME>
    profile-param-value-origin: <REPLACE_ME>
  cm-07.01_odp.04:
    profile-values:
      - <REPLACE_ME>
    profile-param-value-origin: <REPLACE_ME>
  cm-07.01_odp.05:
    profile-values:
      - <REPLACE_ME>
    profile-param-value-origin: <REPLACE_ME>
  cm-07.01_odp.06:
    profile-values:
      - <REPLACE_ME>
    profile-param-value-origin: <REPLACE_ME>
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: cm-07.01
---

# cm-7.1 - \[\] Periodic Review

## Control Statement

- \[(a)\] Review the system [frequency] to identify unnecessary and/or nonsecure functions, ports, protocols, software, and services; and

- \[(b)\] Disable or remove [organization-defined functions, ports, protocols, software, and services within the system deemed to be unnecessary and/or nonsecure].

## Control guidance

Organizations review functions, ports, protocols, and services provided by systems or system components to determine the functions and services that are candidates for elimination. Such reviews are especially important during transition periods from older technologies to newer technologies (e.g., transition from IPv4 to IPv6). These technology transitions may require implementing the older and newer technologies simultaneously during the transition period and returning to minimum essential functions, ports, protocols, and services at the earliest opportunity. Organizations can either decide the relative security of the function, port, protocol, and/or service or base the security decision on the assessment of other entities. Unsecure protocols include Bluetooth, FTP, and peer-to-peer networking.

## Control assessment_objective

- \[CM-07(01)(a)\] the system is reviewed [frequency] to identify unnecessary and/or non-secure functions, ports, protocols, software, and services:

- \[CM-07(01)(b)\]

- \[CM-07(01)(b)[01]\]  [functions] deemed to be unnecessary and/or non-secure are disabled or removed;
- \[CM-07(01)(b)[02]\]  [ports] deemed to be unnecessary and/or non-secure are disabled or removed;
- \[CM-07(01)(b)[03]\]  [protocols] deemed to be unnecessary and/or non-secure are disabled or removed;
- \[CM-07(01)(b)[04]\]  [software] deemed to be unnecessary and/or non-secure is disabled or removed;
- \[CM-07(01)(b)[05]\]  [services] deemed to be unnecessary and/or non-secure are disabled or removed.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: cm-7.1 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: cm-7.1 -->

#### Rules:

  - accounts_password_warn_age_login_defs

#### Implementation Status: planned

______________________________________________________________________
