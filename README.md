# STIX Enhancement Proposals (SEPs)
For demonstrating how SEPs might work.

# What is the problem we're trying to solve?
## tl;dr
SEPs are intended to establish a mechanism for folks to suggest their
ideas in a common structure, recruit others to help, and iterate on
bleeding-edge stuff in an interoperable manner without degrading the
ecosystem of production tools that only expect CS/CSD level inputs.

It's not just enough having a great idea. For that idea to translate
into reality, you have to educate potential supporters, recruit
co-sponsors to help with the work, and gradually build consensus. This
process aims to make that easier.

## Background
Things can move pretty slowly in a consensus-based standards body and
good ideas can get bogged-down in committee. Part of the resistance to
new ideas in STIX2 is that the technical committee's risk appetite has
shifted towards demanding a higher level of vetting before changes get
pulled into the formal work process. Meanwhile there are folks trying
to tackle real-world problems who can't wait on changes to the formal
specifications to be finalized. STIX2 has support for custom objects
and properties, but while these are sufficient to address the needs of
vendor-specific implementations they are not interoperable.

## Definitions
* **SDO:** STIX Domain Object, used to characterize CTI as nodes in
  the STIX graph model.
* **SCO:** STIX Cyber Observable, used to characterize observations
  within a STIX Observed Data SDO.
* **STIX Extensions:** STIX Extensions define coherent sets of
  properties to add additional capabilities to SDOs or SCOs. These may
  be logically constrained to certain SDO or SCO types where
  semantically it would be nonsensical outside a limited context. For
  example, using the SCO HTTP Request Extension makes sense in the
  context of a Network Traffic SCO, but would not in the case of a
  File SCO.

# Scope
* [Defining new STIX SDOs as SEPs](#seps-for-new-sdos)
* [Defining new STIX Cyber Observables (SCOs) as SEPs](#seps-for-new-scos)
* [Defining new STIX Extensions](#seps-for-new-extensions)

# SEPs for new SDOs
1. Fork this repository.
2. Give your SEP a name and create a corresponding directory
   within [`seps/draft/sdos/`](seps/draft/sdos/).
3. Copy
   [`templates/sdo_sep_template/template.md`](templates/sdo_sep_template/template.md)
   and
   [`templates/sdo_sep_template/template.json`](templates/sdo_sep_template/template.json)
   into the directory you just created (s/template/your SEP name).
4. Start by filling out as much as you can of <your SEP name>.md.
5. Ping the CTI TC via Slack on the #general channel to let folks know
   what you're working on and where to find it.
6. Create a dedicate CTI TC Slack channel for collaboration.
7. Define the object's schema in <your SEP name>.json
8. Rinse and repeat on Slack and minigroup working calls until you
   feel the work is ready to be presented to the wider CTI TC.
9. Barring substantive objections by the CTI TC, do a pull request
   against this git repo.
10. ...profit!

## An example
If you look under
[`seps/draft/sdos/x-oasis-cti-tc-grouping/`](seps/draft/sdos/x-oasis-cti-tc-grouping/)
you'll see the Grouping proposal (taken from the STIX 2.1-Working
Concepts Google Doc) defined as a SEP. There's Markdown (for the
humans) and JSON Schema (for the machines.)

# SEPs for new SCOs
1. Fork this repository.
2. Give your SEP a name and create a corresponding directory
   within [`seps/draft/scos/`](seps/draft/scos/).
3. Copy
   [`templates/sco_sep_template/template.md`](templates/sco_sep_template/template.md)
   and
   [`templates/sco_sep_template/template.json`](templates/sco_sep_template/template.json)
   into the directory you just created (s/template/your SEP name).
4. Start by filling out as much as you can of <your SEP name>.md.
5. Ping the CTI TC via Slack on the #general channel to let folks know
   what you're working on and where to find it.
6. Create a dedicate CTI TC Slack channel for collaboration.
7. Define the object's schema in <your SEP name>.json
8. Rinse and repeat on Slack and minigroup working calls until you
   feel the work is ready to be presented to the wider CTI TC.
9. Barring substantive objections by the CTI TC, do a pull request
   against this git repo.
10. ...profit!

## An example
If you look under
[`seps/draft/scos/x-oasis-cti-tc-webpage/`](seps/draft/scos/x-oasis-cti-tc-webpage/)
you'll see the Webpage proposal (based on Terry MacDonald's proposal
to the TC mailing list) defined as a SEP. There's Markdown (for the
humans) and JSON Schema (for the machines.)

# SEPs for new Extensions
* [TODO] create example of an SCO Extension for Terry MacDonald's HTTP
  Response Extension to the Network Traffic SCO.
* [TODO] create example of an SDO Extension for Jason Kierstead's
  Assertion Extension to Observed Data and Indicator.

# The SEP registry
The idea is that if you receive a custom object prefixed with
`x-oasis-cti-tc-*`, then you know to look in
[`manifest.md`](manifest.md) to figure out what type of SEP it is,
where to find the associate descriptive text and schema, as well as
the latest version (based on the git commit SHA1 hash).

# SEP statuses
* `draft`: for immature/bleeding-edge SEPs
* `active`: for SEPs that are actually in production use and done
  enough to be debated for inclusion in a CSD
* `deprecated`: for SEPs which have been EOL'ed or withdrawn

# TODO
- [X] finish example for SCO SEPS (a la x-oasis-cti-tc-grouping)
- [ ] figure out how to handle SEPs that add new properties or sets of
      properties to existing SDOs and SCOs
- [ ] talk through the draft, active, and deprecated statuses - does
      the minigroup/bleeding-edge work happen in `draft` on a fork,
      then get merged into `active` upon PR or is there a more formal
      review process?
- [ ] what about non-TC members - if they all sign the CLA and do a
      PR, can we incorporate their work into a CSD?
- [ ] add workflow diagram
