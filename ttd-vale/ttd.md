We want a tool that a user can run locally (in the future, the potential for a remote service that is instead triggered locally by a command or a Git push). This tool packages a number of opinionated tests that give an indication of documentation qusality, including structral and linguistic checks.

The tool is a wrapper that triggers a number of tests that run in containers, those containers provide output, and the tool then processes those outputs into something more readbale and provides an indication of the overall docs quality. In the future, the hosted service will also provide a badge that indoicates this.

The tool is a go application, working title redaktor, that pulls our custom container images from raxkaprt and runs them.

For stage 1, readaktor will run arbritarly defined tests and process teh outpurs. For stage 2, it will ask a user what tests they want to run. For stage 3 we may consider GUIs for the configuration and output. Stage 4 is then running this as a service.

For simplicity, we will make the tests opinionated, if users want to change this, then we provide documentation and encourage PRs.

Further optional stages are a form of editor integration.

The one dependency is Docker.

## Tasks

- Create and define the tests in container images
    - Document these tests and what they mean and how to change them
    - Analyse output of the tests to see how we can parse it
    - Define the QA value and what it means
- Create redaktor 2
    - It starts
        - It checks for a cionfig file in the current directory,
        - If that doesn't exist, it checks for a global one,
        - If that doesn't exist it creates one based on user input and ask you where to save it
    - The config file is toml formatted    
    - It runs Docker containers based on the config file
    - It receiuves output based on the cofig file
    - It processes output based on the config file
    - It outputs results
- Document how to add new tests
- Codify further style guides

## Tests

### Markdown

All rules enabled apart from :

- https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md033 - HTML is allowed for things like movies etc
- https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md013 - Line length
- https://github.com/DavidAnson/markdownlint/blob/master/doc/Rules.md#md044 - Vale will handle this

### RST

Use Sphinx / docutils linter, doesn't allow for config.

### Spelling

We use Vale and hunspell, with a common list of technical expections.

### Grammar

We use vale, with the folloiwng configured:

- [Annotations (from Vale) to flag remaining TODOs etc](https://github.com/errata-ai/vale/blob/master/rule/vale/Annotations.yml)
- [Starting sentences with 'so' (write good) or 'but'](https://github.com/errata-ai/vale/blob/master/rule/write-good/So.yml)
- [Diacritical](https://github.com/errata-ai/vale/blob/master/rule/proselint/Diacritical.yml)
- [Gender bias](https://github.com/errata-ai/vale/blob/master/rule/proselint/GenderBias.yml)
- [Uncomparables](https://github.com/errata-ai/vale/blob/master/rule/proselint/Uncomparables.yml)
- [Very](https://github.com/errata-ai/vale/blob/master/rule/proselint/Very.yml)
- [Editorialising](https://github.com/errata-ai/vale/blob/master/rule/vale/Editorializing.yml)
- [Hedging](https://github.com/errata-ai/vale/blob/master/rule/vale/Hedging.yml)
- [Litotes](https://github.com/errata-ai/vale/blob/master/rule/vale/Litotes.yml)
- [Repetition](https://github.com/errata-ai/vale/blob/master/rule/vale/Repetition.yml)
- [E-prime](https://github.com/errata-ai/vale/blob/master/rule/write-good/E-Prime.yml)
- [Passive](https://github.com/errata-ai/vale/blob/master/rule/write-good/Passive.yml)
- [There is](https://github.com/errata-ai/vale/blob/master/rule/write-good/ThereIs.yml)
- [Too Wordy](https://github.com/errata-ai/vale/blob/master/rule/write-good/TooWordy.yml)
- [Weasel](https://github.com/errata-ai/vale/blob/master/rule/write-good/Weasel.yml)
- [Abbreviations](https://github.com/errata-ai/vale/blob/master/styles/18F/Abbreviations.yml)
- [Quotes](https://github.com/errata-ai/vale/blob/master/styles/18F/Quotes.yml)
- [Avoid](https://github.com/errata-ai/vale/blob/master/styles/MailChimp/Avoid.yml)
- [Negative](https://github.com/errata-ai/vale/blob/master/styles/MailChimp/Negative.yml)
- [List start](https://github.com/errata-ai/vale/blob/master/styles/OpenStack/ListStart.yml)
- [Guys](https://github.com/errata-ai/vale/blob/master/styles/Pedantic/Guys.yaml)
- [Terms](https://github.com/errata-ai/vale/blob/master/styles/Pedantic/Terms.yml)
- [Complex](https://github.com/errata-ai/vale/blob/master/styles/PlainLanguage/ComplexWords.yml)
- [PassiveVoice](https://github.com/errata-ai/vale/blob/master/styles/PlainLanguage/PassiveVoice.yml)
- [UnclearAntecedent](/ttd-vale/vale-styles/ttd/UnclearAntecedent.yml)
- [FutureTense](ttd-vale/vale-styles/ttd/UnclearAntecedent.yml)
- [HeadingStartsWithCapital](https://github.com/errata-ai/vale/blob/master/styles/demo/HeadingStartsWithCapital.yml)
- [EndingPreposition](https://github.com/errata-ai/vale/blob/master/styles/demo/EndingPreposition.yml)
- [ParagraphLength](https://github.com/errata-ai/vale/blob/master/styles/demo/ParagraphLength.yml)
- [SentenceLength](https://github.com/errata-ai/vale/blob/master/styles/demo/SentenceLength.yml)

### Style

We use vale, with the folloiwng configured:

-

### Readability

We use vale, with the folloiwng configured:

- Sentence lenght.
- Paragraph length
- Readability score
