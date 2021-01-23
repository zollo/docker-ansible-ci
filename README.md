# Ansible CI Container

## zollo/ansible-ci

This Ansible container is designed specificially with CI in mind. It contains various dependencies and tools to aid in testing processes.

## Structure

All Ansible content is installed to the root user's folder (/root/.ansible) so that it will be accessible from anywhere in the container.

## Content: OS Packages

* N/A

## Content: Python Modules

* molecule
* junit-xml
* pylint
* pylint_junit
* yamllint
* yamllint-junit
* ansible-lint
* ansible-lint-junit
* yaml-lint-to-junit-xml
* ansible-lint-to-junit-xml