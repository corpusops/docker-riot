# Riot docker based image

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
