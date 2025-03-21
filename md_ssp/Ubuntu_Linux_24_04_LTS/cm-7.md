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
    - name: sshd_disable_forwarding
      description: sshd_disable_forwarding
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
  cm-7_prm_2:
    aggregates:
      - cm-07_odp.02
      - cm-07_odp.03
      - cm-07_odp.04
      - cm-07_odp.05
      - cm-07_odp.06
  cm-07_odp.01:
    guidelines:
      - prose: mission-essential capabilities for the system are defined;
    alt-identifier: cm-7_prm_1
    profile-param-value-origin: <REPLACE_ME>
  cm-07_odp.02:
    profile-values:
      - <REPLACE_ME>
    profile-param-value-origin: <REPLACE_ME>
  cm-07_odp.03:
    profile-values:
      - <REPLACE_ME>
    profile-param-value-origin: <REPLACE_ME>
  cm-07_odp.04:
    profile-values:
      - <REPLACE_ME>
    profile-param-value-origin: <REPLACE_ME>
  cm-07_odp.05:
    profile-values:
      - <REPLACE_ME>
    profile-param-value-origin: <REPLACE_ME>
  cm-07_odp.06:
    profile-values:
      - <REPLACE_ME>
    profile-param-value-origin: <REPLACE_ME>
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: cm-07
---

# cm-7 - \[\] Least Functionality

## Control Statement

- \[a.\] Configure the system to provide only [mission-essential capabilities] ; and

- \[b.\] Prohibit or restrict the use of the following functions, ports, protocols, software, and/or services: [organization-defined prohibited or restricted functions, system ports, protocols, software, and/or services].

## Control guidance

Systems provide a wide variety of functions and services. Some of the functions and services routinely provided by default may not be necessary to support essential organizational missions, functions, or operations. Additionally, it is sometimes convenient to provide multiple services from a single system component, but doing so increases risk over limiting the services provided by that single component. Where feasible, organizations limit component functionality to a single function per component. Organizations consider removing unused or unnecessary software and disabling unused or unnecessary physical and logical ports and protocols to prevent unauthorized connection of components, transfer of information, and tunneling. Organizations employ network scanning tools, intrusion detection and prevention systems, and end-point protection technologies, such as firewalls and host-based intrusion detection systems, to identify and prevent the use of prohibited functions, protocols, ports, and services. Least functionality can also be achieved as part of the fundamental design and development of the system (see [SA-8](#sa-8), [SC-2](#sc-2) , and [SC-3](#sc-3)).

## Control assessment_objective

- \[CM-07a.\] the system is configured to provide only [mission-essential capabilities];

- \[CM-07b.\]

- \[CM-07b.[01]\] the use of [functions] is prohibited or restricted;
- \[CM-07b.[02]\] the use of [ports] is prohibited or restricted;
- \[CM-07b.[03]\] the use of [protocols] is prohibited or restricted;
- \[CM-07b.[04]\] the use of [software] is prohibited or restricted;
- \[CM-07b.[05]\] the use of [services] is prohibited or restricted.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: cm-7 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: cm-7 -->

#### Rules:

  - accounts_password_warn_age_login_defs
  - sshd_disable_forwarding

#### Implementation Status: planned

______________________________________________________________________
