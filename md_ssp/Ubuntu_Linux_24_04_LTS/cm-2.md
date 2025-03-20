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
  cm-02_odp.01:
    guidelines:
      - prose: the frequency of baseline configuration review and update is defined;
    alt-identifier: cm-2_prm_1
    profile-param-value-origin: <REPLACE_ME>
  cm-02_odp.02:
    guidelines:
      - prose: the circumstances requiring baseline configuration review and update
          are defined;
    alt-identifier: cm-2_prm_2
    profile-param-value-origin: <REPLACE_ME>
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: cm-02
---

# cm-2 - \[\] Baseline Configuration

## Control Statement

- \[a.\] Develop, document, and maintain under configuration control, a current baseline configuration of the system; and

- \[b.\] Review and update the baseline configuration of the system:

  - \[1.\] [frequency];
  - \[2.\] When required due to [circumstances] ; and
  - \[3.\] When system components are installed or upgraded.

## Control guidance

Baseline configurations for systems and system components include connectivity, operational, and communications aspects of systems. Baseline configurations are documented, formally reviewed, and agreed-upon specifications for systems or configuration items within those systems. Baseline configurations serve as a basis for future builds, releases, or changes to systems and include security and privacy control implementations, operational procedures, information about system components, network topology, and logical placement of components in the system architecture. Maintaining baseline configurations requires creating new baselines as organizational systems change over time. Baseline configurations of systems reflect the current enterprise architecture.

## Control assessment_objective

- \[CM-02a.\]

- \[CM-02a.[01]\] a current baseline configuration of the system is developed and documented;
- \[CM-02a.[02]\] a current baseline configuration of the system is maintained under configuration control;

- \[CM-02b.\]

- \[CM-02b.01\] the baseline configuration of the system is reviewed and updated [frequency];
- \[CM-02b.02\] the baseline configuration of the system is reviewed and updated when required due to [circumstances];
- \[CM-02b.03\] the baseline configuration of the system is reviewed and updated when system components are installed or upgraded.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: cm-2 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: cm-2 -->

#### Rules:

  - accounts_password_warn_age_login_defs

#### Implementation Status: planned

______________________________________________________________________
