# Vale for Spelling, Grammar, Style and Readability Tests

A common request from technical writers is to create a tool that matches their personal or company style guides, and highlights other common issues in documentation.

To create this test we considered two options that allow you to combine human language linters, [textlint](http://textlint.github.io) and [vale](http://valelint.github.io/). Despite textlint's more active community, we opted to use vale.

Textlint takes a more JavaScript-esque approach, making a wide variety of textlint compatible plugins to match a wide variety of tests. This means that lots of prebuilt options are available to install and use with out much configuration, but in JavaScript fashion this means a lot of dependencies and code for simple and discrete tasks.

Vale takes a different approach, providing one linter, and a selection of [nine checks](https://valelint.github.io/docs/styles/#creating-a-style) that you combine together to recreate most common language linting tasks. For example, if you want to search for 'weasel words', create an `existence` check for a selection of words, and Vale handles the rest.

We want all the Test the Docs tools to be usable by developers who aren't good writers, and writers who aren't good developers. This test bundles a set of checks we feel are the most important that you can see in the _[.vale.ini](.vale.ini)_ configuration file ([Read the vale docs for more configuration explanation](https://valelint.github.io/docs/config/)). If you would rather use pre-written vale checks and styles, [we have a wide variety of reference checks available](https://github.com/testthedocs/Vale-Styles) built from popular style guides. Read the documentation in that repository to find out how to use them.

## Checks Run

### Spelling

All spelling related tests generate `error`s.

-   [Spelling with a common list of technical exceptions](https://github.com/testthedocs/vale-styles/blob/master/ttd/Spelling.yml)

### Grammar

All grammar related tests generate `warning`s.:

-   [FutureTense](https://github.com/testthedocs/vale-styles/blob/master/ttd/FutureTense.yml)
-   [Passive voice, from write-good](https://github.com/testthedocs/vale-styles/blob/master/write-good/Passive.yml)
-   [Weasel words, from write-good](https://github.com/testthedocs/vale-styles/blob/master/write-good/Weasel.yml)
-   [Starting sentences with 'there is'](https://github.com/testthedocs/vale-styles/blob/master/write-good/ThereIs.yml)
-   Hedging words, from vale
-   Repetition of words, from vale
-   Editorializing language that adds nothing, from vale
-   [Future tense, from us](https://github.com/testthedocs/vale-styles/blob/master/ttd/FutureTense.yml)
-   [Unclear antecedent, from us](https://github.com/testthedocs/vale-styles/blob/master/ttd/UnclearAntecedent.yml)
-   [Unnecessary usage of 'very', from proselint](https://github.com/testthedocs/vale-styles/blob/master/proselint/Very.yml)
-   [Poor comparisons, from proselint](https://github.com/testthedocs/vale-styles/blob/master/proselint/Uncomparables.yml)
-   Ending a sentence with a preposition, from vale
-   [Use correct abbreviations, from 18F](https://github.com/errata-ai/vale/blob/master/styles/18F/Abbreviations.yml)

### Style

All style related tests generate `suggestion`s:

-   [Consistent use of diacritics, from proselint](https://github.com/testthedocs/vale-styles/blob/master/proselint/Diacritical.yml)
-   [Headings start with a capital, from the vale demo](https://github.com/errata-ai/vale/blob/master/styles/demo/HeadingStartsWithCapital.yml)
-   [Gender bias, from proselint](https://github.com/testthedocs/vale-styles/blob/master/proselint/GenderBias.yml)
-   Highlight litotes, from vale
-   [British English quote and punctuation combination](https://github.com/errata-ai/vale/blob/master/styles/18F/Quotes.yml)
-   [Negative language use, from MailChimp](https://github.com/errata-ai/vale/blob/master/styles/MailChimp/Negative.yml)
-   [Using 'guys'](https://github.com/errata-ai/vale/blob/master/styles/Pedantic/Guys.yml)
-   [List start with a capital letter, from OpenStack](https://github.com/errata-ai/vale/blob/master/styles/OpenStack/ListStart.yml)
-   [Starting sentences with 'so' or 'but', from write-good](https://github.com/testthedocs/vale-styles/blob/master/write-good/So.yml)

### Readability

All style related tests generate `suggestion`s.:

-   Annotations (from Vale) to flag remaining TODOs and other annotations in text
-   [Paragraph length from vale demo, set at 150 words](https://github.com/errata-ai/vale/blob/master/styles/demo/ParagraphLength.yml)
-   [Sentence length from vale demo, set at 25 words](https://github.com/errata-ai/vale/blob/master/styles/demo/SentenceLength.yml)
-   Overly complex text with [too Wordy from write-good](https://github.com/testthedocs/vale-styles/blob/master/write-good/TooWordy.yml), [avoid from MailChimp](https://github.com/errata-ai/vale/blob/master/styles/MailChimp/Avoid.yml), [terms from Pedantic](https://github.com/errata-ai/vale/blob/master/styles/Pedantic/Terms.yml), and [complex from PlainLanguage](https://github.com/errata-ai/vale/blob/master/styles/PlainLanguage/ComplexWords.yml)
-   Readability score
