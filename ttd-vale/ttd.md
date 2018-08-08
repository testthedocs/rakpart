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

- Annotations (from Vale) to flag remaining TODOs etc
- Starting sentences with 'so' (write good) or 'but'.
- Diacritical
- Gender bias
- Unomprables (from Vale)
- Very
- Editorialising
- Hedging
- Litotes
- Repetition
- E-prime
- Passive
- There is
- Too Wordy
- Weasel
- Abbreviations
- Quotes
- Avoid (mail chimp)
- Negative (mailchimp)
- List start (open stack)
- Guys (pedantic)
- Terms (pendatic)
- Complex (PlainLanguage)
- PassiveVoice (PlainLanguage)

### Style

We use vale, with the folloiwng configured:

- 

### Readability

We use vale, with the folloiwng configured:

- Sentence lenght.
- Paragraph length
- Readability score

