# Code of Conduct for participating in Abraxas VOTING Stimmunterlagen Offline

## Introduction

The cantons in Switzerland are responsible for conducting ballots on the federal and cantonal (state) level and for tallying the votes. Some cantons have decided to offer electronic voting to their voters, within the [framework of the Federal legislation](https://www.bk.admin.ch/bk/en/home/politische-rechte/e-voting/versuchsbedingungen.html).

The Federal legislation provides a mechanism that allows voters to check that their vote has been correctly recorded in the electronic ballot box (individual verifiability). This control is done by means of return codes. To ensure the security of the mechanism, the return codes are sent in paper form to the citizens printed on the voting card. The cantons are responsible to prepare the voting cards.

The application published here with the name `VOTING Stimmunterlagen Offline` is responsible for generating the voting cards, which are afterwards transferred to a dedicated print center. The application is deployed on an airgap laptop by the cantons. During the process, the generated voting cards are encrypted and digital signed to ensure a secure transmission to the print center. The canton operates the application in 4-eyes principles.

Abraxas publishs continuously pre-releases (release candidates) of the system containing information about the software, its source code and the corresponding documentation, and conducts a Bug Bounty Program. Those measures combined are referred to as "**The Program**" hereafter.

The goal of the Program is to find and fix security issues and to improve the quality of the system. Abraxas and their clients firmly believe that openness and public scrutiny will lead to a trustworthy system of high quality.

This Code of Conduct and the [Bug Bounty and Code Disclosure Policy](./SECURITY.md#Bug-Bounty-and-Code-Disclosure-Policy) together establish the rules for the Program. The [Bug Bounty and Code Disclosure Policy](./SECURITY.md#Bug-Bounty-and-Code-Disclosure-Policy) on the Bug Bounty Platform is synonymous to the Security Policy on GitHub.

## Basic Rules

Scope of the Program is the disclosed material and the dedicated system for the Bug Bounty Program (as defined in chapter "Scope"). Any other information, services and systems are out of scope.

Abraxas retains all intellectual property and relates rights to the source code and other disclosed components of the system, including copyright and patent rights. No transfer of title is intended.

Everyone accessing all or part of the Program or participating in the public security test or the Bug Bounty Program agrees to be bound by the provisions of this Code of Conduct and the [Bug Bounty and Code Disclosure Policy](./SECURITY.md#Bug-Bounty-and-Code-Disclosure-Policy).

Abraxas runs the Bug Bounty Program with support from Bug Bounty Switzerland GmbH. The decisions in the Bug Bounty Program are made by Abraxas solely.

## What you can expect from us

- We carefully review all incoming reports about vulnerabilities and are interested in a constructive dialog on an equal footing.
- We recognize reports from experts as an important contribution to the improvement of the security of the system  `VOTING Stimmunterlagen Offline`.
- We pay fair rewards in the Bug Bounty Program.
- We respect the academic freedom of researchers.

## What we expect from you

- Participants respect the privacy and property of others and avoid destroying data or disrupting systems.
- Participants report their findings to Abraxas through one of the offered channels.
- Participants read the Code of Conduct and adhere to it, including responsible disclosure

## Participation Rules

No registration is required for accessing the system and its source code, once disclosed publicly. However, you need to register if you want to participate in the Bug Bounty Program to:

- get accounts on the system
- be eligible to get rewards for valid vulnerabilities

You may register for the Bug Bounty Program on the [Bug Bounty Switzerland Plattform](https://www.bugbounty.ch/abraxas).

## Scope

The content of the scope is defined in the [Bug Bounty and Code Disclosure Policy](./SECURITY.md#scope). Please consult this page for the required information.

## Submission Guidelines for security issues

Findings need to be reported through one of the following channels:

- Bug Bounty Program on the [Bug Bounty Switzerland Plattform](https://app.bugbounty.ch/hacker/engagement/details/f7d48517-4ec6-4d91-bc94-5337c30cf5bc/basic-data)
- issue / security advisory to the Abraxas Product Security Incident Response Team: psirt-voting@abraxas.ch

    Please ensure to report only findings having an impact on security of the product `VOTING Stimmunterlagen Offline` (see chapter "Scope"). Your report must contain a clear proof of concept that demonstrates the scenario.

Your submission must contain the following details:

- Attack scenario including impact on the product `VOTING Stimmunterlagen Offline` in form of a step-by-step procedure to reproduce the issue
- References to the documentation and the source code:
  - implicated protocols/algorithms
  - implicated pages/paragraphs
  - implicated line(s) of code (when relevant)
  - any other information that might help us identify the vulnerable parts
- External references:
  - Academic references on the matter
  - Technical studies on the matter
  - Conference papers
  - Any other information that might help us understand the issue

## Submission Guidelines for non-security related topics

Any discussions independent of security related topics can be held as follows:

- On Github per repository in the `Discussions` section.
- directly to the responsible product team via email to voting@abraxas.ch

Your submission should contain the following details:

- Scenario including impact on the product `VOTING Stimmunterlagen Offline`
- References to the documentation and the source code:
  - implicated protocols/algorithms
  - implicated pages/paragraphs
  - implicated line(s) of code (when relevant)
  - any other information that might help us identify the vulnerable parts
- External references:
  - Academic references on the matter
  - Technical studies on the matter
  - Conference papers
  - Any other information that might help us understand the issue

### Rewards

For legal reasons, rewards can only be obtained through the Bug Bounty Program. Rewards are distributed at the discretion of Abraxas. Reporting a finding does not mean you have a right to bug bounty bonuses.

## Responsible Vulnerability Disclosure

Abraxas will communicate transparently about results and findings as soon as the public release starts on GitHub under [voting-stimmunterlagen-offline-client-docs / Security Advisory](https://github.com/abraxas-labs/voting-stimmunterlagen-offline-client-docs/security/advisories).

Everyone who reports a relevant finding will be credited for it in accordance with the terms of the [Bug Bounty and Code Disclosure Policy](./SECURITY.md#Bug-Bounty-and-Code-Disclosure-Policy). If you wish, you may remain anonymous. You may also use an alias.

You are free to publish your findings only after allowing Abraxas a maximum of 90 days (starting from the day of your submission) to analyze your submission and the opportunity to fix the vulnerability. Coordinated disclosure with Abraxas after 90 days would be appreciated, but is not specifically required.

## License Source Code (Permitted use)

You are entitled to examine and modify the source code for non-commercial or non-productive purposes. You may publish papers on your findings and use the information gained for the purpose of research, advancing knowledge, teaching or learning.

You are allowed to make copies of the source code. The license terms, copyright notices and attributions included in the source code or the other materials must be maintained and adhered to at all times.

You are not allowed to use any part of the Program, or any information gained from the Program or from parts of the Program for commercial purposes or for any use in another system or for any productive use. In particular, the source code or any part of it may not be used in any software or for any goods or services.

## Consequences of non-complying with the Code of Conduct

Abraxas values a constructive and fair collaboration with the participants. When acting in accordance with this Code of Conduct, the [Bug Bounty and Code Disclosure Policy](./SECURITY.md#Bug-Bounty-and-Code-Disclosure-Policy) and in compliance with the applicable laws, Abraxas waives claims against the participants.

Any non-compliance with this Code of Conduct, the [Bug Bounty and Code Disclosure Policy](./SECURITY.md#Bug-Bounty-and-Code-Disclosure-Policy), and the applicable laws may result in exclusion from the Program. For minor breaches, a warning may be issued. For severe breaches, Abraxas reserves all rights provided by applicable laws.

## Applicable Law and Jurisdiction

The Code of Conduct is governed by and constituted in accordance with the laws of Switzerland, with the exclusion of the United Nations Convention on Contracts for the International Sale of Goods and the Conflict of Laws. Exclusive Place of Jurisdiction shall be St. Gallen, Switzerland, whereby mandatory statutory provisions to the contrary regarding the place of jurisdiction are reserved.
