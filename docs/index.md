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

At present **Rakpart** includes two checks for Markdown;

- [Markdown Lint](https://rakpart.testthedocs/ttd-mdlint) (Common Markdown code style linter)
- [Remark Lint](https://rakpart.testthedocs/ttd-remark) (Markdown code style linter for [CommonMark](https://commonmark.org))

### reStructuredText

All links for [rest](rst.io)

- Doc8
- Toctree

### Editorial Style Guidelines

- Vale
- Textlint

### Others

- Linkcheck
- HTML Test
- Tab
- Trailing Space

### CI

How to use *Rakpart* with CI.


### Git workflow

All about Git hooks, etc, etc

## Dependencies

- [Docker](https://www.docker.com/ "Docker Homepage")
