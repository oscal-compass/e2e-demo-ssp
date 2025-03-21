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
    - name: sshd_set_loglevel_info
      description: sshd_set_loglevel_info
    - name: sshd_set_max_auth_tries
      description: sshd_set_max_auth_tries
    - name: sudo_custom_logfile
      description: sudo_custom_logfile
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: au-07
---

# au-7 - \[\] Audit Record Reduction and Report Generation

## Control Statement

Provide and implement an audit record reduction and report generation capability that:

- \[a.\] Supports on-demand audit record review, analysis, and reporting requirements and after-the-fact investigations of incidents; and

- \[b.\] Does not alter the original content or time ordering of audit records.

## Control guidance

Audit record reduction is a process that manipulates collected audit log information and organizes it into a summary format that is more meaningful to analysts. Audit record reduction and report generation capabilities do not always emanate from the same system or from the same organizational entities that conduct audit logging activities. The audit record reduction capability includes modern data mining techniques with advanced data filters to identify anomalous behavior in audit records. The report generation capability provided by the system can generate customizable reports. Time ordering of audit records can be an issue if the granularity of the timestamp in the record is insufficient.

## Control assessment_objective

- \[AU-07a.\]

- \[AU-07a.[01]\] an audit record reduction and report generation capability is provided that supports on-demand audit record review, analysis, and reporting requirements and after-the-fact investigations of incidents;
- \[AU-07a.[02]\] an audit record reduction and report generation capability is implemented that supports on-demand audit record review, analysis, and reporting requirements and after-the-fact investigations of incidents;

- \[AU-07b.\]

- \[AU-07b.[01]\] an audit record reduction and report generation capability is provided that does not alter the original content or time ordering of audit records;
- \[AU-07b.[02]\] an audit record reduction and report generation capability is implemented that does not alter the original content or time ordering of audit records.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: au-7 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: au-7 -->

#### Rules:

  - sshd_set_loglevel_info
  - sshd_set_max_auth_tries
  - sudo_custom_logfile

#### Implementation Status: planned

______________________________________________________________________
