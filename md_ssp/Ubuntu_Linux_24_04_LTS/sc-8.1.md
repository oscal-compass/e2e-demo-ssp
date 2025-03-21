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
    - name: sshd_use_strong_ciphers
      description: sshd_use_strong_ciphers
    - name: sshd_use_strong_kex
      description: sshd_use_strong_kex
    - name: sshd_use_strong_macs
      description: sshd_use_strong_macs
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
  sc-08.01_odp:
    alt-identifier: sc-8.1_prm_1
    profile-param-value-origin: <REPLACE_ME>
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: sc-08.01
---

# sc-8.1 - \[\] Cryptographic Protection

## Control Statement

Implement cryptographic mechanisms to [Selection (one or more): prevent unauthorized disclosure of information; detect changes to information] during transmission.

## Control guidance

Encryption protects information from unauthorized disclosure and modification during transmission. Cryptographic mechanisms that protect the confidentiality and integrity of information during transmission include TLS and IPSec. Cryptographic mechanisms used to protect information integrity include cryptographic hash functions that have applications in digital signatures, checksums, and message authentication codes.

## Control assessment_objective

cryptographic mechanisms are implemented to [Selection (one or more): prevent unauthorized disclosure of information; detect changes to information] during transmission.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: sc-8.1 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: sc-8.1 -->

#### Rules:

  - sshd_use_strong_ciphers
  - sshd_use_strong_kex
  - sshd_use_strong_macs

#### Implementation Status: planned

______________________________________________________________________
