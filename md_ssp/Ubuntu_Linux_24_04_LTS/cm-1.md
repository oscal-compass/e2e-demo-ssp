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
  cm-1_prm_1:
    aggregates:
      - cm-01_odp.01
      - cm-01_odp.02
  cm-01_odp.01:
    profile-values:
      - <REPLACE_ME>
    profile-param-value-origin: <REPLACE_ME>
  cm-01_odp.02:
    profile-values:
      - <REPLACE_ME>
    profile-param-value-origin: <REPLACE_ME>
  cm-01_odp.03:
    alt-identifier: cm-1_prm_2
    profile-param-value-origin: <REPLACE_ME>
  cm-01_odp.04:
    guidelines:
      - prose: an official to manage the configuration management policy and procedures
          is defined;
    alt-identifier: cm-1_prm_3
    profile-param-value-origin: <REPLACE_ME>
  cm-01_odp.05:
    guidelines:
      - prose: the frequency at which the current configuration management policy
          is reviewed and updated is defined;
    alt-identifier: cm-1_prm_4
    profile-param-value-origin: <REPLACE_ME>
  cm-01_odp.06:
    guidelines:
      - prose: events that would require the current configuration management policy
          to be reviewed and updated are defined;
    alt-identifier: cm-1_prm_5
    profile-param-value-origin: <REPLACE_ME>
  cm-01_odp.07:
    guidelines:
      - prose: the frequency at which the current configuration management procedures
          are reviewed and updated is defined;
    alt-identifier: cm-1_prm_6
    profile-param-value-origin: <REPLACE_ME>
  cm-01_odp.08:
    guidelines:
      - prose: events that would require configuration management procedures to be
          reviewed and updated are defined;
    alt-identifier: cm-1_prm_7
    profile-param-value-origin: <REPLACE_ME>
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: cm-01
---

# cm-1 - \[\] Policy and Procedures

## Control Statement

- \[a.\] Develop, document, and disseminate to [organization-defined personnel or roles]:

  - \[1.\] [Selection (one or more): organization-level; mission/business process-level; system-level] configuration management policy that:

    - \[(a)\] Addresses purpose, scope, roles, responsibilities, management commitment, coordination among organizational entities, and compliance; and
    - \[(b)\] Is consistent with applicable laws, executive orders, directives, regulations, policies, standards, and guidelines; and

  - \[2.\] Procedures to facilitate the implementation of the configuration management policy and the associated configuration management controls;

- \[b.\] Designate an [official] to manage the development, documentation, and dissemination of the configuration management policy and procedures; and

- \[c.\] Review and update the current configuration management:

  - \[1.\] Policy [frequency] and following [events] ; and
  - \[2.\] Procedures [frequency] and following [events].

## Control guidance

Configuration management policy and procedures address the controls in the CM family that are implemented within systems and organizations. The risk management strategy is an important factor in establishing such policies and procedures. Policies and procedures contribute to security and privacy assurance. Therefore, it is important that security and privacy programs collaborate on the development of configuration management policy and procedures. Security and privacy program policies and procedures at the organization level are preferable, in general, and may obviate the need for mission- or system-specific policies and procedures. The policy can be included as part of the general security and privacy policy or be represented by multiple policies that reflect the complex nature of organizations. Procedures can be established for security and privacy programs, for mission/business processes, and for systems, if needed. Procedures describe how the policies or controls are implemented and can be directed at the individual or role that is the object of the procedure. Procedures can be documented in system security and privacy plans or in one or more separate documents. Events that may precipitate an update to configuration management policy and procedures include, but are not limited to, assessment or audit findings, security incidents or breaches, or changes in applicable laws, executive orders, directives, regulations, policies, standards, and guidelines. Simply restating controls does not constitute an organizational policy or procedure.

## Control assessment_objective

- \[CM-01a.\]

- \[CM-01a.[01]\] a configuration management policy is developed and documented;
- \[CM-01a.[02]\] the configuration management policy is disseminated to [personnel or roles];
- \[CM-01a.[03]\] configuration management procedures to facilitate the implementation of the configuration management policy and associated configuration management controls are developed and documented;
- \[CM-01a.[04]\] the configuration management procedures are disseminated to [personnel or roles];
- \[CM-01a.01\]

- \[CM-01a.01(a)\]

- \[CM-01a.01(a)[01]\] the [Selection (one or more): organization-level; mission/business process-level; system-level] of the configuration management policy addresses purpose;
- \[CM-01a.01(a)[02]\] the [Selection (one or more): organization-level; mission/business process-level; system-level] of the configuration management policy addresses scope;
- \[CM-01a.01(a)[03]\] the [Selection (one or more): organization-level; mission/business process-level; system-level] of the configuration management policy addresses roles;
- \[CM-01a.01(a)[04]\] the [Selection (one or more): organization-level; mission/business process-level; system-level] of the configuration management policy addresses responsibilities;
- \[CM-01a.01(a)[05]\] the [Selection (one or more): organization-level; mission/business process-level; system-level] of the configuration management policy addresses management commitment;
- \[CM-01a.01(a)[06]\] the [Selection (one or more): organization-level; mission/business process-level; system-level] of the configuration management policy addresses coordination among organizational entities;
- \[CM-01a.01(a)[07]\] the [Selection (one or more): organization-level; mission/business process-level; system-level] of the configuration management policy addresses compliance;

- \[CM-01a.01(b)\] the configuration management policy is consistent with applicable laws, Executive Orders, directives, regulations, policies, standards, and guidelines;

- \[CM-01b.\] the [official] is designated to manage the development, documentation, and dissemination of the configuration management policy and procedures;

- \[CM-01c.\]

- \[CM-01c.01\]

- \[CM-01c.01[01]\] the current configuration management policy is reviewed and updated [frequency];
- \[CM-01c.01[02]\] the current configuration management policy is reviewed and updated following [events];

- \[CM-01c.02\]

- \[CM-01c.02[01]\] the current configuration management procedures are reviewed and updated [frequency];
- \[CM-01c.02[02]\] the current configuration management procedures are reviewed and updated following [events].

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: cm-1 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: cm-1 -->

#### Rules:

  - accounts_password_warn_age_login_defs

#### Implementation Status: planned

______________________________________________________________________
