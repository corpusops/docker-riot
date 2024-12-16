# Riot docker based image


DISCLAIMER
============

**UNMAINTAINED/ABANDONED CODE / DO NOT USE**

Due to the new EU Cyber Resilience Act (as European Union), even if it was implied because there was no more activity, this repository is now explicitly declared unmaintained.

The content does not meet the new regulatory requirements and therefore cannot be deployed or distributed, especially in a European context.

This repository now remains online ONLY for public archiving, documentation and education purposes and we ask everyone to respect this.

As stated, the maintainers stopped development and therefore all support some time ago, and make this declaration on December 15, 2024.

We may also unpublish soon (as in the following monthes) any published ressources tied to the corpusops project (pypi, dockerhub, ansible-galaxy, the repositories).
So, please don't rely on it after March 15, 2025 and adapt whatever project which used this code.



## ENVIRONMENT

* **DEFAULT\_HS\_URL**:
  This is the default home server url.
  Default: ``https://matrix.org``
* **DEFAULT\_IS\_URL**:
  This is the default identity server url (this is the server used for
  verifying third party identifiers like email addresses). If this is blank,
  registering with an email address, adding an email address to your account,
  or inviting users via email address will not work. Matrix identity servers
  are very simple web services which map third party identifiers (currently
  only email addresses) to matrix IDs: see
  http://matrix.org/docs/spec/identity_service/unstable.html for more details.
  Currently the only public matrix identity servers are https://matrix.org
  and https://vector.im. In future identity servers will be decentralised.
  Default: ``https://vector.im``
* **BRAND**:
  Riot Branding.
  Default: ``Riot``
* **INTEGRATIONS\_UI\_URL**:
  URL to the web interface for the integrations server.
  Default: ``https://scalar.vector.im/``
* **INTEGRATIONS\_REST\_URL**:
  URL to the REST interface for the integrations server.
  Default: ``https://scalar.vector.im/api``
