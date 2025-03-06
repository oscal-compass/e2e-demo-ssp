---
x-trestle-set-params:
    # This section contains the parameters that are part of this control.
  # Each parameter has properties. Only the profile-values and display-name properties are editable.
  # The other properties are informational.
  #
  # The values property for a parameter represents values inherited from the OSCAL catalog.
  # To override the catalog settings, use bullets under profile-values as shown below:
  #
  #   profile-values:
  #     - value 1
  #     - value 2
  #
  # If the "- <REPLACE_ME>" placeholder appears under profile-values, it is the same as if
  # the profile-values property were left empty.
  #
  # Some parameters may show an aggregates property which lists other parameters. This means
  # the parameter value is made up of the values from the other parameters. For parameters
  # that aggregate, profile-values is not applicable.
  #
  # Property param-value-origin is meant for putting the origin from where that parameter comes from.
  # In order to be changed in the current profile, profile-param-value-origin property will be displayed with
  # the placeholder "<REPLACE_ME>" for you to be replaced. If a parameter already has a param-value-origin
  # coming from an inherited profile, do no change this value, instead use profile-param-value-origin as follows:
  #
  #    param-value-origin: DO NOT REPLACE - this is the original value
  #    profile-param-value-origin: <REPLACE_ME> - replace the new value required HERE
  #
  ia-05.01_odp.01:
    alt-identifier: ia-5.1_prm_1
    profile-values:
      - <REPLACE_ME>
    profile-param-value-origin: <REPLACE_ME>
  ia-05.01_odp.02:
    alt-identifier: ia-5.1_prm_2
    profile-values:
      - <REPLACE_ME>
    profile-param-value-origin: <REPLACE_ME>
x-trestle-global:
  profile:
    title: NIST SP 800-53 Rev 5 Controls, selected
  sort-id: ia-05.01
---

# ia-5.1 - \[\] Password-based Authentication

## Control Statement

For password-based authentication:

- \[(a)\] Maintain a list of commonly-used, expected, or compromised passwords and update the list {{ insert: param, ia-05.01_odp.01 }} and when organizational passwords are suspected to have been compromised directly or indirectly;

- \[(b)\] Verify, when users create or update passwords, that the passwords are not found on the list of commonly-used, expected, or compromised passwords in IA-5(1)(a);

- \[(c)\] Transmit passwords only over cryptographically-protected channels;

- \[(d)\] Store passwords using an approved salted key derivation function, preferably using a keyed hash;

- \[(e)\] Require immediate selection of a new password upon account recovery;

- \[(f)\] Allow user selection of long passwords and passphrases, including spaces and all printable characters;

- \[(g)\] Employ automated tools to assist the user in selecting strong password authenticators; and

- \[(h)\] Enforce the following composition and complexity rules: {{ insert: param, ia-05.01_odp.02 }}.

## Control Assessment Objective

- \[IA-05(01)(a)\] for password-based authentication, a list of commonly used, expected, or compromised passwords is maintained and updated {{ insert: param, ia-05.01_odp.01 }} and when organizational passwords are suspected to have been compromised directly or indirectly;

- \[IA-05(01)(b)\] for password-based authentication when passwords are created or updated by users, the passwords are verified not to be found on the list of commonly used, expected, or compromised passwords in IA-05(01)(a);

- \[IA-05(01)(c)\] for password-based authentication, passwords are only transmitted over cryptographically protected channels;

- \[IA-05(01)(d)\] for password-based authentication, passwords are stored using an approved salted key derivation function, preferably using a keyed hash;

- \[IA-05(01)(e)\] for password-based authentication, immediate selection of a new password is required upon account recovery;

- \[IA-05(01)(f)\] for password-based authentication, user selection of long passwords and passphrases is allowed, including spaces and all printable characters;

- \[IA-05(01)(g)\] for password-based authentication, automated tools are employed to assist the user in selecting strong password authenticators;

- \[IA-05(01)(h)\] for password-based authentication, {{ insert: param, ia-05.01_odp.02 }} are enforced.

## Control guidance

Password-based authentication applies to passwords regardless of whether they are used in single-factor or multi-factor authentication. Long passwords or passphrases are preferable over shorter passwords. Enforced composition rules provide marginal security benefits while decreasing usability. However, organizations may choose to establish certain rules for password generation (e.g., minimum character length for long passwords) under certain circumstances and can enforce this requirement in IA-5(1)(h). Account recovery can occur, for example, in situations when a password is forgotten. Cryptographically protected passwords include salted one-way cryptographic hashes of passwords. The list of commonly used, compromised, or expected passwords includes passwords obtained from previous breach corpuses, dictionary words, and repetitive or sequential characters. The list includes context-specific words, such as the name of the service, username, and derivatives thereof.

# Editable Content

<!-- Make additions and edits below -->
<!-- The above represents the contents of the control as received by the profile, prior to additions. -->
<!-- If the profile makes additions to the control, they will appear below. -->
<!-- The above markdown may not be edited but you may edit the content below, and/or introduce new additions to be made by the profile. -->
<!-- If there is a yaml header at the top, parameter values may be edited. Use --set-parameters to incorporate the changes during assembly. -->
<!-- The content here will then replace what is in the profile for this control, after running profile-assemble. -->
<!-- The current profile has no added parts for this control, but you may add new ones here. -->
<!-- Each addition must have a heading either of the form ## Control my_addition_name -->
<!-- or ## Part a. (where the a. refers to one of the control statement labels.) -->
<!-- "## Control" parts are new parts added after the statement part. -->
<!-- "## Part" parts are new parts added into the top-level statement part with that label. -->
<!-- Subparts may be added with nested hash levels of the form ### My Subpart Name -->
<!-- underneath the parent ## Control or ## Part being added -->
<!-- See https://oscal-compass.github.io/compliance-trestle/tutorials/ssp_profile_catalog_authoring/ssp_profile_catalog_authoring for guidance. -->
