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
    - name: accounts_password_pam_pwhistory_use_authtok
      description: accounts_password_pam_pwhistory_use_authtok
    - name: accounts_password_pam_unix_authtok
      description: accounts_password_pam_unix_authtok
    - name: set_password_hashing_algorithm_logindefs
      description: set_password_hashing_algorithm_logindefs
    - name: set_password_hashing_algorithm_systemauth
      description: set_password_hashing_algorithm_systemauth
    - name: account_disable_post_pw_expiration
      description: account_disable_post_pw_expiration
    - name: accounts_maximum_age_login_defs
      description: accounts_maximum_age_login_defs
    - name: accounts_minimum_age_login_defs
      description: accounts_minimum_age_login_defs
    - name: accounts_password_last_change_is_in_past
      description: accounts_password_last_change_is_in_past
    - name: accounts_password_pam_dcredit
      description: accounts_password_pam_dcredit
    - name: accounts_password_pam_dictcheck
      description: accounts_password_pam_dictcheck
    - name: accounts_password_pam_difok
      description: accounts_password_pam_difok
    - name: accounts_password_pam_enforce_root
      description: accounts_password_pam_enforce_root
    - name: accounts_password_pam_enforcing
      description: accounts_password_pam_enforcing
    - name: accounts_password_pam_lcredit
      description: accounts_password_pam_lcredit
    - name: accounts_password_pam_maxrepeat
      description: accounts_password_pam_maxrepeat
    - name: accounts_password_pam_maxsequence
      description: accounts_password_pam_maxsequence
    - name: accounts_password_pam_minclass
      description: accounts_password_pam_minclass
    - name: accounts_password_pam_minlen
      description: accounts_password_pam_minlen
    - name: accounts_password_pam_ocredit
      description: accounts_password_pam_ocredit
    - name: accounts_password_pam_pwhistory_enabled
      description: accounts_password_pam_pwhistory_enabled
    - name: accounts_password_pam_pwhistory_enforce_root
      description: accounts_password_pam_pwhistory_enforce_root
    - name: accounts_password_pam_pwhistory_remember
      description: accounts_password_pam_pwhistory_remember
    - name: accounts_password_pam_pwquality_enabled
      description: accounts_password_pam_pwquality_enabled
    - name: accounts_password_pam_ucredit
      description: accounts_password_pam_ucredit
    - name: accounts_password_pam_unix_no_remember
      description: accounts_password_pam_unix_no_remember
    - name: accounts_password_set_max_life_existing
      description: accounts_password_set_max_life_existing
    - name: accounts_password_set_min_life_existing
      description: accounts_password_set_min_life_existing
    - name: no_empty_passwords_unix
      description: no_empty_passwords_unix
    - name: sshd_disable_empty_passwords
      description: sshd_disable_empty_passwords
    - name: sshd_disable_gssapi_auth
      description: sshd_disable_gssapi_auth
    - name: sshd_disable_rhosts
      description: sshd_disable_rhosts
    - name: sshd_enable_pam
      description: sshd_enable_pam
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
  ia-05.01_odp.01:
    guidelines:
      - prose: the frequency at which to update the list of commonly used, expected,
          or compromised passwords is defined;
    alt-identifier: ia-5.1_prm_1
    profile-param-value-origin: <REPLACE_ME>
  ia-05.01_odp.02:
    guidelines:
      - prose: authenticator composition and complexity rules are defined;
    alt-identifier: ia-5.1_prm_2
    profile-param-value-origin: <REPLACE_ME>
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
    href: trestle://profiles/NIST_800-53_rev5_selected/profile.json
  sort-id: ia-05.01
---

# ia-5.1 - \[\] Password-based Authentication

## Control Statement

For password-based authentication:

- \[(a)\] Maintain a list of commonly-used, expected, or compromised passwords and update the list [frequency] and when organizational passwords are suspected to have been compromised directly or indirectly;

- \[(b)\] Verify, when users create or update passwords, that the passwords are not found on the list of commonly-used, expected, or compromised passwords in IA-5(1)(a);

- \[(c)\] Transmit passwords only over cryptographically-protected channels;

- \[(d)\] Store passwords using an approved salted key derivation function, preferably using a keyed hash;

- \[(e)\] Require immediate selection of a new password upon account recovery;

- \[(f)\] Allow user selection of long passwords and passphrases, including spaces and all printable characters;

- \[(g)\] Employ automated tools to assist the user in selecting strong password authenticators; and

- \[(h)\] Enforce the following composition and complexity rules: [composition and complexity rules].

## Control guidance

Password-based authentication applies to passwords regardless of whether they are used in single-factor or multi-factor authentication. Long passwords or passphrases are preferable over shorter passwords. Enforced composition rules provide marginal security benefits while decreasing usability. However, organizations may choose to establish certain rules for password generation (e.g., minimum character length for long passwords) under certain circumstances and can enforce this requirement in IA-5(1)(h). Account recovery can occur, for example, in situations when a password is forgotten. Cryptographically protected passwords include salted one-way cryptographic hashes of passwords. The list of commonly used, compromised, or expected passwords includes passwords obtained from previous breach corpuses, dictionary words, and repetitive or sequential characters. The list includes context-specific words, such as the name of the service, username, and derivatives thereof.

## Control assessment_objective

- \[IA-05(01)(a)\] for password-based authentication, a list of commonly used, expected, or compromised passwords is maintained and updated [frequency] and when organizational passwords are suspected to have been compromised directly or indirectly;

- \[IA-05(01)(b)\] for password-based authentication when passwords are created or updated by users, the passwords are verified not to be found on the list of commonly used, expected, or compromised passwords in IA-05(01)(a);

- \[IA-05(01)(c)\] for password-based authentication, passwords are only transmitted over cryptographically protected channels;

- \[IA-05(01)(d)\] for password-based authentication, passwords are stored using an approved salted key derivation function, preferably using a keyed hash;

- \[IA-05(01)(e)\] for password-based authentication, immediate selection of a new password is required upon account recovery;

- \[IA-05(01)(f)\] for password-based authentication, user selection of long passwords and passphrases is allowed, including spaces and all printable characters;

- \[IA-05(01)(g)\] for password-based authentication, automated tools are employed to assist the user in selecting strong password authenticators;

- \[IA-05(01)(h)\] for password-based authentication, [composition and complexity rules] are enforced.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

### This System

<!-- Add implementation prose for the main This System component for control: ia-5.1 -->

#### Implementation Status: planned

### Ubuntu_Linux_24.04_LTS

<!-- Add control implementation description here for control: ia-5.1 -->

#### Rules:

  - sshd_use_strong_ciphers
  - sshd_use_strong_kex
  - sshd_use_strong_macs
  - accounts_password_pam_pwhistory_use_authtok
  - accounts_password_pam_unix_authtok
  - set_password_hashing_algorithm_logindefs
  - set_password_hashing_algorithm_systemauth
  - account_disable_post_pw_expiration
  - accounts_maximum_age_login_defs
  - accounts_minimum_age_login_defs
  - accounts_password_last_change_is_in_past
  - accounts_password_pam_dcredit
  - accounts_password_pam_dictcheck
  - accounts_password_pam_difok
  - accounts_password_pam_enforce_root
  - accounts_password_pam_enforcing
  - accounts_password_pam_lcredit
  - accounts_password_pam_maxrepeat
  - accounts_password_pam_maxsequence
  - accounts_password_pam_minclass
  - accounts_password_pam_minlen
  - accounts_password_pam_ocredit
  - accounts_password_pam_pwhistory_enabled
  - accounts_password_pam_pwhistory_enforce_root
  - accounts_password_pam_pwhistory_remember
  - accounts_password_pam_pwquality_enabled
  - accounts_password_pam_ucredit
  - accounts_password_pam_unix_no_remember
  - accounts_password_set_max_life_existing
  - accounts_password_set_min_life_existing
  - no_empty_passwords_unix
  - sshd_disable_empty_passwords
  - sshd_disable_gssapi_auth
  - sshd_disable_rhosts
  - sshd_enable_pam

#### Implementation Status: planned

______________________________________________________________________
