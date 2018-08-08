# Rakpart and redaktor

We want a tool that a user can run locally, and in the future, as a remote service that is triggered by a command or a Git push. This tool packages opinionated tests that give an indication of documentation quality, including structural and linguistic checks.

The tool is a wrapper that triggers tests that run in containers. Those containers provide output, and the tool then processes those outputs into something more readable and provides an indication of the overall docs quality. In the future, the hosted service will also provide a badge that shows this value.

The tool is a go application, working title 'redaktor', that pulls our custom container images from raxkaprt and runs them.

For stage 1, readaktor runs arbitrarily defined tests and process the outputs. For stage 2, it will ask a user what tests they want to run. For stage 3 we may consider GUIs for the configuration and output. Stage 4 is then running this as a service.

For simplicity, we make the tests opinionated, if users want to change this, then we provide documentation and encourage PRs.

Further optional stages are a form of editor integration.

The one dependency is Docker.

## Tasks

-   Create and define the tests in container images
    -   Document these tests and what they mean and how to change them
    -   Analyze output of the tests to see how we can parse it
    -   Define the QA value and what it means
-   Create redaktor 2
    -   It starts
        -   It checks for a config file in the current directory,
        -   If that doesn't exist, it checks for a global one,
        -   If that doesn't exist it creates one based on user input and ask you where to save it
    -   The config file is toml formatted    
    -   It runs Docker containers based on the config file
    -   It receives output based on the cofig file
    -   It processes output based on the config file
    -   It outputs results
-   Document how to add new tests
-   Codify further style guides

## Tests

### Markdown

All rules enabled apart from:

-   HTML is allowed for things like movies embeds <https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md033>
-   Line length <https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md013>
-   Vale handles this <https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md044>

### RST

Use Sphinx / docutils linter, doesn't allow for config.

### Spelling

We use Vale and hunspell, with a common list of technical exceptions. All spelling related tests generate `error`s.

-   [FutureTense](ttd-vale/vale-styles/ttd/FutureTense.yml)

### Grammar

We use vale, with the following configured. All grammar related tests generate `warning`s.:

-   [Passive voice, from write-good](https://github.com/errata-ai/vale/blob/master/rule/write-good/Passive.yml)
-   [Weasel words, from write-good](https://github.com/errata-ai/vale/blob/master/rule/write-good/Weasel.yml)
-   [Starting sentences with 'there is'](https://github.com/errata-ai/vale/blob/master/rule/write-good/ThereIs.yml)
-   [Hedging words](https://github.com/errata-ai/vale/blob/master/rule/vale/Hedging.yml)
-   [Repetition of words, from vale](https://github.com/errata-ai/vale/blob/master/rule/vale/Repetition.yml)
-   [Editorializing language that adds nothing, from vale](https://github.com/errata-ai/vale/blob/master/rule/vale/Editorializing.yml)
-   [Future tense, from us](ttd-vale/vale-styles/ttd/FutureTense.yml)
-   [Unclear antecedent, from us](/ttd-vale/vale-styles/ttd/UnclearAntecedent.yml)
-   [Unnecessary usage of 'very', from proselint](https://github.com/errata-ai/vale/blob/master/rule/proselint/Very.yml)
-   [Poor comparisons, from proselint](https://github.com/errata-ai/vale/blob/master/rule/proselint/Uncomparables.yml)
-   [Ending a sentence with a preposition, from vale](https://github.com/errata-ai/vale/blob/master/styles/demo/EndingPreposition.yml)
-   [Use correct abbreviations, from 18F](https://github.com/errata-ai/vale/blob/master/styles/18F/Abbreviations.yml)

### Style

We use vale, with the following configured. All style related tests generate `suggestion`s:

-   [Consistent use of diacritics, from proselint](https://github.com/errata-ai/vale/blob/master/rule/proselint/Diacritical.yml)
-   [Headings start with a capital, from the vale demo](https://github.com/errata-ai/vale/blob/master/styles/demo/HeadingStartsWithCapital.yml)
-   [Gender bias, from proselint](https://github.com/errata-ai/vale/blob/master/rule/proselint/GenderBias.yml)
-   [Highlight litotes, from vale](https://github.com/errata-ai/vale/blob/master/rule/vale/Litotes.yml)
-   [British English quote and punctuation combination](https://github.com/errata-ai/vale/blob/master/styles/18F/Quotes.yml)
-   [Negative language use, from MailChimp](https://github.com/errata-ai/vale/blob/master/styles/MailChimp/Negative.yml)
-   [Using 'guys'](https://github.com/errata-ai/vale/blob/master/styles/Pedantic/Guys.yml)
-   [List start with a capital letter, from OpenStack](https://github.com/errata-ai/vale/blob/master/styles/OpenStack/ListStart.yml)
-   [Starting sentences with 'so' or 'but', from write-good](https://github.com/errata-ai/vale/blob/master/rule/write-good/So.yml)

### Readability

We use vale, with the following configured. All style related tests generate `suggestion`s.:

-   [Annotations (from Vale) to flag remaining TODOs and other annotations in text](https://github.com/errata-ai/vale/blob/master/rule/vale/Annotations.yml)
-   [Paragraph length from vale, set at 150 words](https://github.com/errata-ai/vale/blob/master/styles/demo/ParagraphLength.yml)
-   [Sentence length from vale, set at 25 words](https://github.com/errata-ai/vale/blob/master/styles/demo/SentenceLength.yml)
-   Overly complex text with [too Wordy from write-good](https://github.com/errata-ai/vale/blob/master/rule/write-good/TooWordy.yml), [avoid from MailChimp](https://github.com/errata-ai/vale/blob/master/styles/MailChimp/Avoid.yml), [terms from Pedantic](https://github.com/errata-ai/vale/blob/master/styles/Pedantic/Terms.yml), and [complex from PlainLanguage](https://github.com/errata-ai/vale/blob/master/styles/PlainLanguage/ComplexWords.yml)
-   Readability score
