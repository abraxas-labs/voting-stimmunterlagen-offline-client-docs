# Security

The projects published in Github based on `VOTING Stimmunterlagen Offline` are made available as part of a public code disclosure program.

## Code of Conduct

This project uses the [Code of Conduct](./CODE_OF_CONDUCT.md) to define expected conduct in our community.

Instances of abusive, harassing, or otherwise unacceptable behavior may be reported by contacting a project maintainer at psirt-voting@abraxas.ch

## Bug Bounty and Code Disclosure Policy

### Overview

The Bug Bounty Program is part of the Program as defined in the [Code of Conduct](./CODE_OF_CONDUCT.md) available on GitHub.
This Bug Bounty and Code Disclosure Policy (also called Security Policy) complements the [Code of Conduct](./CODE_OF_CONDUCT.md) with Bug Bounty specific rules and regulations.
The System subject to the Program including this Code Disclosure Program has the Abraxas product name `VOTING Stimmunterlagen Offline`. The product `VOTING Stimmunterlagen Offline` include for example:

- `VOTING Stimmunterlagen Offline Frontend` (Frontend, [Github Link](https://github.com/abraxas-labs/voting-stimmunterlagen-offline-client-app/tree/main/frontend))
- `VOTING Stimmunterlagen Offline Backend` (Backend [Github Link](https://github.com/abraxas-labs/voting-stimmunterlagen-offline-client-app/tree/main/backend))
- `VOTING Stimmunterlagen Offline Shared` (Library [Github Link](https://github.com/abraxas-labs/voting-stimmunterlagen-offline-client-shared))

We will from time to time as considered necessary issue an updated version of this Bug Bounty Policy and Code Disclosure Policy.

### Program Rules

The rules and regulations established in the [Code of Conduct](./CODE_OF_CONDUCT.md) and this Bug Bounty and Code Disclosure Policy are binding for this Program.

### Legal Safe Harbor

Abraxas values a constructive and fair collaboration with the participants of the Program. Abraxas will not take legal actions against participants in this Bug Bounty Program, as long as participants act in good faith and in accordance with the licence agreement, this Bug Bounty Policy, the provisions of the [Code of Conduct](./CODE_OF_CONDUCT.md) and the applicable laws. Under these conditions:

We interpret activities by participants within this Program as authorized access under the Swiss Penal Code. This includes Swiss Penal Code paragraphs 143, 143bis and 144bis.
We will not file a complaint against participants within this Program for trying to circumvent the security measures deployed in order to protect the services in-scope for this Program.
If legal action is initiated by a third party against a participant within this Program, we will take reasonable measures supporting the participant to defend the claim of the third party.
Any non-compliance with the licence agreement, [Code of Conduct](./CODE_OF_CONDUCT.md), this Bug Bounty Policy, and the applicable laws may result in exclusion from the Program and legal prosecution. For minor breaches, a warning may be issued. For severe breaches, Abraxas reserves all rights provided by applicable laws.

#### Basic Principles

All activities leading to the discovery of an improvement:

- are within the Program;
- may result in a bounty to be paid to you. The amount of compensation is based on the severity of the security related issue and the quality of the documentation submitted to Abraxas;
- shall respect the intellectual property rights and other rights of Abraxas, its customers and third-parties;
- shall not result in third-party data to be spied on or disclosed.

#### Eligibility Bug Bounty Program

- This is a public Program – everyone can participate
- You must not be a former or current employee of Abraxas, Canton of St. Gallen, Bug Bounty Switzerland or one of its contractors
- Any issues must be reported exclusively through the defined channel which is the platform of Bug Bounty Switzerland

#### Responsible Vulnerability Disclosure

Vulnerability disclosure is possible since the start of the public phase of the Program, respecting the “Responsible Vulnerability Disclosure” section in the [Code of Conduct](./CODE_OF_CONDUCT.md). Abraxas will also communicate transparently about results and will credit researchers publicly, if agreed.

#### Reporting Requirements

Please ensure to report only vulnerabilities with a real impact on the product `VOTING Stimmunterlagen Offline` and report clear proof of concepts that demonstrate the scenario (nothing without impact and nothing purely theoretical).
Please make sure to complete your report with the following details:

- Attack Scenario including impact on the product `VOTING Stimmunterlagen Offline` in form of a step-by-step procedure to reproduce the issue, include attachments such as screenshots or proof of concept code as necessary
- References to the documentation and the source code if applicable:
  - implicated protocols/algorithms
  - implicated pages/paragraphs
  - implicated line(s) of code (when relevant)
  - any other information that might help us identify the vulnerable parts
- External references:
  - Academic references on the matter
  - Technical studies on the matter
  - Conference papers
  - Any other information that might help us understand the vulnerability

### Scope

The compiled `VOTING Stimmunterlagen` running on a Microsoft Windows Client system without higher priviledges of an administrator account and under the 4-eyes principle.

Should you identify an interesting but out-of-scope target you can attribute to `VOTING Stimmunterlagen Offline`, please report it and ask for permission to test it.

### Out-of-Scope and general information

The application is used on a terminal device without access to any network systems and without admin rights. The application is used in a 4-eyes principle. The input data is delivered via an external and encrypted physical medium. The output of the system is signed and also encrypted on a physical medium.

Any attacks that are theoretical or require access to a remote application on the network are generally out of scope, also attacks that target the integrity of end users.

### Qualifying Findings

Everything with a real impact on security of `VOTING Stimmunterlagen Offline` – e.g.:

- Remote code execution (RCE) or other attack types based on content that is imported into the application via an input medium
- Source code findings with a measurable and provable impact on the system or the generated output

### Reward Grid

The Abraxas Bug Bounty Grid defines in which framework and methodology bounties can be defined. It is based on the CVSS Scoring Model. Please note that in a normal, productive setting `VOTING Stimmunterlagen Offline` is not exposed to any networks (`AV:P`).

Reports without direct impact according to [Qualifying Vulnerabilities](./#qualifying-vulnerabilities) will be rejected or rated as 'Informative' and do not receive any bounties.

#### Bounties

|Scope|Low|Medium|High|Critical|
|---|---|---|---|---|
|VOTING Stimmunterlagen Offline|CHF 300|CHF 750|CHF 1'500|CHF 5'000|

#### Scenarios

Additionally, there are specific scenarios for which Abraxas is prepared to offer special bounties. These bounties apply to all scopes and will be paid instead of the above CVSS based bounties (and not additional to them), if applicable.

|No.|Scenario|Examples|Bounty Range|
|---|---|---|---|
|1|Manipulated voting cards can be generated which make it impossible to submit a vote or permit to falsify the vote.<br /><br />Note: Manipulation of data within the source systems is excluded and cannot be claimed here. The manipulations must happen after exportation and verification from the source systems.| - Voting cards will be declared "invalid" during the electronic vote due to incorrect codes.<br />- Votes will be declared "invalid" during the vote, despite they are valid.<br />- E-voting codes (e.g. Initialisation Code) are invalid and cannot be used in the e-voting system.<br />- Individual voting cards are removed from the total set.<br />- Drop of codes for voting options.<br />- Drop of question text.<br />- Swapping the names of candidates.<br />| CHF 5'000 - CHF 15'000|

Rewards are distributed at the discretion of Abraxas.

#### Eligibility Bounties

- You must be the first reporter of a vulnerability to be eligible for a bounty
- The vulnerability must be a qualifying vulnerability or enter in one of the categories of the specific scenarios to be eligible for a bounty
- In case of exploits on different endpoints, parameters or components caused by the same underlying weakness, we reserve the right to honor only the first report and reject the subsequent ones as 'Duplicate' or 'Informative' depending on the case.
- Claims related to the reporting of a vulnerability before, after or without actually reporting a vulnerability are not considered by Abraxas.
