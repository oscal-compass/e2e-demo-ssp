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
  cm-09_odp:
    guidelines:
      - prose: personnel or roles to review and approve the configuration management
          plan is/are defined;
    alt-identifier: cm-9_prm_1
    profile-param-value-origin: <REPLACE_ME>
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: cm-09
---

# cm-9 - \[\] Configuration Management Plan

## Control Statement

Develop, document, and implement a configuration management plan for the system that:

- \[a.\] Addresses roles, responsibilities, and configuration management processes and procedures;

- \[b.\] Establishes a process for identifying configuration items throughout the system development life cycle and for managing the configuration of the configuration items;

- \[c.\] Defines the configuration items for the system and places the configuration items under configuration management;

- \[d.\] Is reviewed and approved by [personnel or roles] ; and

- \[e.\] Protects the configuration management plan from unauthorized disclosure and modification.

## Control guidance

Configuration management activities occur throughout the system development life cycle. As such, there are developmental configuration management activities (e.g., the control of code and software libraries) and operational configuration management activities (e.g., control of installed components and how the components are configured). Configuration management plans satisfy the requirements in configuration management policies while being tailored to individual systems. Configuration management plans define processes and procedures for how configuration management is used to support system development life cycle activities.

Configuration management plans are generated during the development and acquisition stage of the system development life cycle. The plans describe how to advance changes through change management processes; update configuration settings and baselines; maintain component inventories; control development, test, and operational environments; and develop, release, and update key documents.

Organizations can employ templates to help ensure the consistent and timely development and implementation of configuration management plans. Templates can represent a configuration management plan for the organization with subsets of the plan implemented on a system by system basis. Configuration management approval processes include the designation of key stakeholders responsible for reviewing and approving proposed changes to systems, and personnel who conduct security and privacy impact analyses prior to the implementation of changes to the systems. Configuration items are the system components, such as the hardware, software, firmware, and documentation to be configuration-managed. As systems continue through the system development life cycle, new configuration items may be identified, and some existing configuration items may no longer need to be under configuration control.

## Control assessment_objective

- \[CM-09[01]\] a configuration management plan for the system is developed and documented;

- \[CM-09[02]\] a configuration management plan for the system is implemented;

- \[CM-09a.\]

- \[CM-09a.[01]\] the configuration management plan addresses roles;
- \[CM-09a.[02]\] the configuration management plan addresses responsibilities;
- \[CM-09a.[03]\] the configuration management plan addresses configuration management processes and procedures;

- \[CM-09b.\]

- \[CM-09b.[01]\] the configuration management plan establishes a process for identifying configuration items throughout the system development life cycle;
- \[CM-09b.[02]\] the configuration management plan establishes a process for managing the configuration of the configuration items;

- \[CM-09c.\]

- \[CM-09c.[01]\] the configuration management plan defines the configuration items for the system;
- \[CM-09c.[02]\] the configuration management plan places the configuration items under configuration management;

- \[CM-09d.\] the configuration management plan is reviewed and approved by [personnel or roles];

- \[CM-09e.\]

- \[CM-09e.[01]\] the configuration management plan is protected from unauthorized disclosure;
- \[CM-09e.[02]\] the configuration management plan is protected from unauthorized modification.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: cm-9 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: cm-9 -->

#### Rules:

  - accounts_password_warn_age_login_defs

#### Implementation Status: planned

______________________________________________________________________
