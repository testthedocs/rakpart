# Codifying style guides with Vale

A common request for many technical writers is to create a linting setup that matches their personal or company style guides. Creating a set of rules that they can test their writing to see if it matches the guide.

At a recent docs testing hackathon we set ourselves the aim of creating a form of 'open source Grammarly'. A tool that combines a selection of writing tests and existing linters to give writers overall feedback on the quality of their writing, and matches rules that they define, and lets them make the changes needed to bring the document(s) up to scratch.

In a recent round up of linters we looked at optiosn that solve pieces of this puzzle, as well as those that help you combine linting tests together, and while others have created new linters that match popular style guides, we decided to use one of these existing tools to see what we could create.

We considered two options, textlint and vale, but despite textlint's more active community, we opted to use Vale for the following reasons.

Textlint takes a more JavaScript-esque focus, making a wide variety of textlint compatible plugins available to match a wide varietyu of tests. This means that lots of prebuilt options are avialble that you install and use with out much configuration, but in JavaScript fashion this can mean a lot of dependencies and code to run for simple and discrete tasks.

Vale takes a different approack, only providing one linter, and a selection of [nine checks](https://valelint.github.io/docs/styles/#creating-a-style) that you combine together to recreate most common language linting tasks. For example, if you want to search for 'weasel words', no need to add a new plugin, instead create an `existence` check for a selection of words, and Vale handles the rest.

## Installation

For basic installation and configuration, check the [website of the vale project](https://valelint.github.io/docs

## Checks we hoped to replicate

While Grammarly doesn't publish a list of the checks it supports, we used a test article to figure out some of the common ones and then how to replicate them. We can't completeky tell you how to create rules to match your style guide, but we hope it helps you get started.

### Removing TODOs and other annotations
This rule is already available, as part of the default `vale.Annotations` rule, and as part of the replicated proselint annotations rule. Which one you use is up to you, but make sure you disable one, or you receive too many warnings about the same issues.

```ini
vale.Annotations = warning
proselint.Annotations = No
```

This example shows how you can enable and disable a provided check, and override its default error level. For our setup we decided to disable all checks and only enable the ones we needed. If you want to do the reverse, add this line to the _.vale.ini_ file which enables all styles and their sub-checks:

```ini
BasedOnStyles = vale, write-good, spelling, proselint, demo, 18F
```

### Unclear antecedent
