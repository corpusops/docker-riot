
DISCLAIMER - ABANDONED/UNMAINTAINED CODE / DO NOT USE
=======================================================
While this repository has been inactive for some time, this formal notice, issued on **December 10, 2024**, serves as the official declaration to clarify the situation. Consequently, this repository and all associated resources (including related projects, code, documentation, and distributed packages such as Docker images, PyPI packages, etc.) are now explicitly declared **unmaintained** and **abandoned**.

I would like to remind everyone that this project’s free license has always been based on the principle that the software is provided "AS-IS", without any warranty or expectation of liability or maintenance from the maintainer.
As such, it is used solely at the user's own risk, with no warranty or liability from the maintainer, including but not limited to any damages arising from its use.

Due to the enactment of the Cyber Resilience Act (EU Regulation 2024/2847), which significantly alters the regulatory framework, including penalties of up to €15M, combined with its demands for **unpaid** and **indefinite** liability, it has become untenable for me to continue maintaining all my Open Source Projects as a natural person.
The new regulations impose personal liability risks and create an unacceptable burden, regardless of my personal situation now or in the future, particularly when the work is done voluntarily and without compensation.

**No further technical support, updates (including security patches), or maintenance, of any kind, will be provided.**

These resources may remain online, but solely for public archiving, documentation, and educational purposes.

Users are strongly advised not to use these resources in any active or production-related projects, and to seek alternative solutions that comply with the new legal requirements (EU CRA).

**Using these resources outside of these contexts is strictly prohibited and is done at your own risk.**

Regarding the potential transfer of the project to another entity, discussions are ongoing, but no final decision has been made yet. As a last resort, if the project and its associated resources are not transferred, I may begin removing any published resources related to this project (e.g., from PyPI, Docker Hub, GitHub, etc.) starting **March 15, 2025**, especially if the CRA’s risks remain disproportionate.

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
