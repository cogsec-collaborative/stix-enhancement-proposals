# stix-extensions-demo
For mocking up how STIX2 extensions will work.

# What is the problem we're trying to solve?
Things can move pretty slowly in a consensus-based standards body and
good ideas can get bogged-down in committee. Meanwhile there are folks
trying to tackle real-world problems who can't wait on changes to the
formal specifications to be finalized. STIX2 supports for custom
objects and properties, but while these are sufficient to address the
needs of vendor-specific implementations they are not interoperable.

Part of the resistance to new ideas in STIX2 is that the technical
committee's risk appetite has shifted towards demanding a higher level
of vetting before changes get pulled into the formal work process. The
goal of the STIX2 Extension Process is to establish a mechanism for
folks to suggest their ideas in a common structure, recruit others to
help with the effort, and iterate on bleeding-edge stuff in an
interoperable manner without degrading the ecosystem of production
tools that only expect CS/CSD level inputs.

# STIX2 as a data model is qualitatively different from STIX Patterning as a language
Dealing with STIX2 extensions that add new SDOs or modify the
semantics of existing ones can be shoehorned into STIX2's existing
support for custom objects. By contrast, STIX Patterning is a
_language_. You can't just jam new stuff into
Patterning. Bleeding-edge Patterning must maintain semantic
coherence. So we'll take different approaches for STIX2 extensions
versus STIX Patterning extensions.

# So the good idea fairy left a gem on your pillow last night?
Super, good for you! But for that idea to translate into reality,
you have to educate your fellow TC participants, recruit co-sponsors
to help with the work, and gradually build consensus. 

# How to manage a STIX2 SDO extension
1. Clone this repository.
2. Give your extension a name and create a corresponding directory
   within `extensions/sdos/`.
3. Copy `templates/sdo_extension_template/template.md` and
   `templates/sdo_extension_template/template.json` into the directory
   you just created (s/template/your extension name).
4. Start by filling out as much as you can of <your extension name>.md.
5. Ping the CTI TC on #general, let folks know what you're working on
   and where to find it.
6. Create a dedicate CTI TC Slack channel for collaboration.
7. Define the object's schema in <your extension name>.json
8. Rinse and repeat on Slack and minigroup working calls until you
   feel the work is ready to be presented to the wider CTI TC.
9. Barring substantive objections by the CTI TC, do a pull request
   against this git repo.
10. ...profit!
