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
    - name: sshd_set_max_auth_tries
      description: sshd_set_max_auth_tries
    - name: sudo_custom_logfile
      description: sudo_custom_logfile
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: au-03
---

# au-3 - \[\] Content of Audit Records

## Control Statement

Ensure that audit records contain information that establishes the following:

- \[a.\] What type of event occurred;

- \[b.\] When the event occurred;

- \[c.\] Where the event occurred;

- \[d.\] Source of the event;

- \[e.\] Outcome of the event; and

- \[f.\] Identity of any individuals, subjects, or objects/entities associated with the event.

## Control guidance

Audit record content that may be necessary to support the auditing function includes event descriptions (item a), time stamps (item b), source and destination addresses (item c), user or process identifiers (items d and f), success or fail indications (item e), and filenames involved (items a, c, e, and f) . Event outcomes include indicators of event success or failure and event-specific results, such as the system security and privacy posture after the event occurred. Organizations consider how audit records can reveal information about individuals that may give rise to privacy risks and how best to mitigate such risks. For example, there is the potential to reveal personally identifiable information in the audit trail, especially if the trail records inputs or is based on patterns or time of usage.

## Control assessment_objective

- \[AU-03a.\] audit records contain information that establishes what type of event occurred;

- \[AU-03b.\] audit records contain information that establishes when the event occurred;

- \[AU-03c.\] audit records contain information that establishes where the event occurred;

- \[AU-03d.\] audit records contain information that establishes the source of the event;

- \[AU-03e.\] audit records contain information that establishes the outcome of the event;

- \[AU-03f.\] audit records contain information that establishes the identity of any individuals, subjects, or objects/entities associated with the event.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: au-3 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: au-3 -->

#### Rules:

  - sshd_set_max_auth_tries
  - sudo_custom_logfile

#### Implementation Status: planned

______________________________________________________________________
