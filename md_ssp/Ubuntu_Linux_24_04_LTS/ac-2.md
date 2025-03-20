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
  ac-02_odp.01:
    guidelines:
      - prose: prerequisites and criteria for group and role membership are defined;
    alt-identifier: ac-2_prm_1
    profile-param-value-origin: <REPLACE_ME>
  ac-02_odp.02:
    guidelines:
      - prose: attributes (as required) for each account are defined;
    alt-identifier: ac-2_prm_2
    profile-param-value-origin: <REPLACE_ME>
  ac-02_odp.03:
    guidelines:
      - prose: personnel or roles required to approve requests to create accounts
          is/are defined;
    alt-identifier: ac-2_prm_3
    profile-param-value-origin: <REPLACE_ME>
  ac-02_odp.04:
    guidelines:
      - prose: policy, procedures, prerequisites, and criteria for account creation,
          enabling, modification, disabling, and removal are defined;
    alt-identifier: ac-2_prm_4
    profile-param-value-origin: <REPLACE_ME>
  ac-02_odp.05:
    guidelines:
      - prose: personnel or roles to be notified is/are defined;
    alt-identifier: ac-2_prm_5
    profile-param-value-origin: <REPLACE_ME>
  ac-02_odp.06:
    guidelines:
      - prose: time period within which to notify account managers when accounts are
          no longer required is defined;
    alt-identifier: ac-2_prm_6
    profile-param-value-origin: <REPLACE_ME>
  ac-02_odp.07:
    guidelines:
      - prose: 'time period within which to notify account managers when users are
          terminated or transferred is defined; '
    alt-identifier: ac-2_prm_7
    profile-param-value-origin: <REPLACE_ME>
  ac-02_odp.08:
    guidelines:
      - prose: time period within which to notify account managers when system usage
          or the need to know changes for an individual is defined;
    alt-identifier: ac-2_prm_8
    profile-param-value-origin: <REPLACE_ME>
  ac-02_odp.09:
    guidelines:
      - prose: attributes needed to authorize system access (as required) are defined;
    alt-identifier: ac-2_prm_9
    profile-param-value-origin: <REPLACE_ME>
  ac-02_odp.10:
    guidelines:
      - prose: the frequency of account review is defined;
    alt-identifier: ac-2_prm_10
    profile-param-value-origin: <REPLACE_ME>
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: ac-02
---

# ac-2 - \[\] Account Management

## Control Statement

- \[a.\] Define and document the types of accounts allowed and specifically prohibited for use within the system;

- \[b.\] Assign account managers;

- \[c.\] Require [prerequisites and criteria] for group and role membership;

- \[d.\] Specify:

  - \[1.\] Authorized users of the system;
  - \[2.\] Group and role membership; and
  - \[3.\] Access authorizations (i.e., privileges) and [attributes (as required)] for each account;

- \[e.\] Require approvals by [personnel or roles] for requests to create accounts;

- \[f.\] Create, enable, modify, disable, and remove accounts in accordance with [policy, procedures, prerequisites, and criteria];

- \[g.\] Monitor the use of accounts;

- \[h.\] Notify account managers and [personnel or roles] within:

  - \[1.\] [time period] when accounts are no longer required;
  - \[2.\] [time period] when users are terminated or transferred; and
  - \[3.\] [time period] when system usage or need-to-know changes for an individual;

- \[i.\] Authorize access to the system based on:

  - \[1.\] A valid access authorization;
  - \[2.\] Intended system usage; and
  - \[3.\] [attributes (as required)];

- \[j.\] Review accounts for compliance with account management requirements [frequency];

- \[k.\] Establish and implement a process for changing shared or group account authenticators (if deployed) when individuals are removed from the group; and

- \[l.\] Align account management processes with personnel termination and transfer processes.

## Control guidance

Examples of system account types include individual, shared, group, system, guest, anonymous, emergency, developer, temporary, and service. Identification of authorized system users and the specification of access privileges reflect the requirements in other controls in the security plan. Users requiring administrative privileges on system accounts receive additional scrutiny by organizational personnel responsible for approving such accounts and privileged access, including system owner, mission or business owner, senior agency information security officer, or senior agency official for privacy. Types of accounts that organizations may wish to prohibit due to increased risk include shared, group, emergency, anonymous, temporary, and guest accounts.

Where access involves personally identifiable information, security programs collaborate with the senior agency official for privacy to establish the specific conditions for group and role membership; specify authorized users, group and role membership, and access authorizations for each account; and create, adjust, or remove system accounts in accordance with organizational policies. Policies can include such information as account expiration dates or other factors that trigger the disabling of accounts. Organizations may choose to define access privileges or other attributes by account, type of account, or a combination of the two. Examples of other attributes required for authorizing access include restrictions on time of day, day of week, and point of origin. In defining other system account attributes, organizations consider system-related requirements and mission/business requirements. Failure to consider these factors could affect system availability.

Temporary and emergency accounts are intended for short-term use. Organizations establish temporary accounts as part of normal account activation procedures when there is a need for short-term accounts without the demand for immediacy in account activation. Organizations establish emergency accounts in response to crisis situations and with the need for rapid account activation. Therefore, emergency account activation may bypass normal account authorization processes. Emergency and temporary accounts are not to be confused with infrequently used accounts, including local logon accounts used for special tasks or when network resources are unavailable (may also be known as accounts of last resort). Such accounts remain available and are not subject to automatic disabling or removal dates. Conditions for disabling or deactivating accounts include when shared/group, emergency, or temporary accounts are no longer required and when individuals are transferred or terminated. Changing shared/group authenticators when members leave the group is intended to ensure that former group members do not retain access to the shared or group account. Some types of system accounts may require specialized training.

## Control assessment_objective

- \[AC-02a.\]

- \[AC-02a.[01]\] account types allowed for use within the system are defined and documented;
- \[AC-02a.[02]\] account types specifically prohibited for use within the system are defined and documented;

- \[AC-02b.\] account managers are assigned;

- \[AC-02c.\]  [prerequisites and criteria] for group and role membership are required;

- \[AC-02d.\]

- \[AC-02d.01\] authorized users of the system are specified;
- \[AC-02d.02\] group and role membership are specified;
- \[AC-02d.03\]

- \[AC-02d.03[01]\] access authorizations (i.e., privileges) are specified for each account;
- \[AC-02d.03[02]\]  [attributes (as required)] are specified for each account;

- \[AC-02e.\] approvals are required by [personnel or roles] for requests to create accounts;

- \[AC-02f.\]

- \[AC-02f.[01]\] accounts are created in accordance with [policy, procedures, prerequisites, and criteria];
- \[AC-02f.[02]\] accounts are enabled in accordance with [policy, procedures, prerequisites, and criteria];
- \[AC-02f.[03]\] accounts are modified in accordance with [policy, procedures, prerequisites, and criteria];
- \[AC-02f.[04]\] accounts are disabled in accordance with [policy, procedures, prerequisites, and criteria];
- \[AC-02f.[05]\] accounts are removed in accordance with [policy, procedures, prerequisites, and criteria];

- \[AC-02g.\] the use of accounts is monitored;

- \[AC-02h.\]

- \[AC-02h.01\] account managers and [personnel or roles] are notified within [time period] when accounts are no longer required;
- \[AC-02h.02\] account managers and [personnel or roles] are notified within [time period] when users are terminated or transferred;
- \[AC-02h.03\] account managers and [personnel or roles] are notified within [time period] when system usage or the need to know changes for an individual;

- \[AC-02i.\]

- \[AC-02i.01\] access to the system is authorized based on a valid access authorization;
- \[AC-02i.02\] access to the system is authorized based on intended system usage;
- \[AC-02i.03\] access to the system is authorized based on [attributes (as required)];

- \[AC-02j.\] accounts are reviewed for compliance with account management requirements [frequency];

- \[AC-02k.\]

- \[AC-02k.[01]\] a process is established for changing shared or group account authenticators (if deployed) when individuals are removed from the group;
- \[AC-02k.[02]\] a process is implemented for changing shared or group account authenticators (if deployed) when individuals are removed from the group;

- \[AC-02l.\]

- \[AC-02l.[01]\] account management processes are aligned with personnel termination processes;
- \[AC-02l.[02]\] account management processes are aligned with personnel transfer processes.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: ac-2 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: ac-2 -->

#### Rules:

  - accounts_passwords_pam_faillock_deny
  - accounts_passwords_pam_faillock_enabled
  - accounts_passwords_pam_faillock_root_unlock_time
  - accounts_passwords_pam_faillock_unlock_time

#### Implementation Status: planned

______________________________________________________________________
