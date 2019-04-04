title: Rakpart - Documentation Quality Assurance - TestTheDocs
description: TestTheDocs Rakpart - A collection of checks which help to improve the quality of technical documentation the DocOps way.


# Documentation Quality Assurance

Building, maintaining and continually improving documentation by doing *Docs As Code* the *DocOps* way.

**Rakpart** is a collection of checks which can help to improve the quality of technical documentation.

---

![Header picture](_static/ci-graph-round.png)

## Outline

All **Rakpart** checks are designed with CI/CD (Continuous Integration and Continuous Delivery) pipelines in mind (*Docs As Code*).

Although all checks work local, too.

Running the checks a part of your Git Workflow (Git hooks for example) is an excellent way to get started!

### Markdown

[Markdown](https://en.wikipedia.org/wiki/Markdown) is a lightweight [markup language](https://en.wikipedia.org/wiki/Markup_language) with plain text formatting syntax.

At present **Rakpart** has two checks for Markdown;

- [Markdown Lint](https://rakpart.testthedocs.org/ttd-mdlint) (Common Markdown code style linter)
- [Remark Lint](https://rakpart.testthedocs.org/ttd-remark) (Markdown code style linter for [CommonMark](https://commonmark.org))

### reStructuredText

[reStructuredText](http://docutils.sourceforge.net/rst.html) is an easy-to-read, what-you-see-is-what-you-get plain text markup syntax and parser system.

**Rakpart** has two checks which are reStructuredText related;

- [Doc8](https://rakpart.testthedocs.org/ttd-doc8) (reStructuredText (reST) code style linter)
- [Toctree Check](https://rakpart.testthedocs/ttd-toctree) (Toctree validation for [Sphinx](http://www.sphinx-doc.org/en/master/) based documentation)

### Editorial Style Guidelines

- Vale
- Textlint

### Additional Checks

- Linkcheck
- HTML Test
- Tab
- Trailing Space

### CI/CD

How to use **Rakpart** with CI/CD (Continuous Integration and Continuous Delivery).


### Git Workflow

All about Git hooks, etc, etc

## Dependencies

- [Docker](https://www.docker.com/ "Docker Homepage")
