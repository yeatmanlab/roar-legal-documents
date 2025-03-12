# roar-legal-documents

A repository that hosts all relevant legal documents for ROAR research. Documents in the main branch represent the latest versions that have been approved by the ROAR IRB. The ROAR dashboard then references these documents when displaying assent, consent, or terms of service documents to its users. The [ROAR IRB maintainers team][link_roar_irb_maintainers] is responsible for ensuring that the main branch versions represent the latest versions approved by the IRB.

## Contributing

To propose changes to a ROAR legal document, please follow these contribution guidelines[^1].

### Contributing through GitHub

[git][link_git] is a really useful tool for version control.
[GitHub][link_github] sits on top of git and supports collaborative and
distributed working.

If you're not yet familiar with `git`, there are lots of great resources to help
you *git* started! Some of our favorites include the [git
Handbook][link_handbook] and the [Software Carpentry introduction to
git][link_swc_intro].

### Understanding the Markdown format

The legal documents themselves are written in the [Markdown][link_markdown] format.
On GitHub, you will also use Markdown to chat in issues and pull requests.  You
can think of Markdown as a few little symbols around your text that will allow
GitHub to render the text with a little bit of formatting.  For example, you
could write words as bold (`**bold**`), or in italics (`*italics*`), or as a
[link][link_rick_roll] (`[link](https://youtu.be/dQw4w9WgXcQ)`) to another webpage.

GitHub has a really helpful page for getting started with
[writing and formatting Markdown on GitHub][link_writing_formatting_github].

### Making a change

1. **Comment on an existing issue or open a new issue referencing your changes.**

   This allows other members of the ROAR team to confirm that you aren't
   overlapping with work that's currently underway and that everyone is on the same page
   with the goal of the work you're going to carry out.

   [This blog][link_pushpullblog] is a nice explanation of why putting this work in up front is so useful to everyone involved.

1. **[Clone][link_clone] your roar-legal-documents repository to your machine/computer.**

   While you can edit files [directly on github][link_githubedit], sometimes the changes
   you want to make will be complex and you will want to use a [text editor][link_texteditor]
   that you have installed on your local machine/computer.
   (One great text editor is [vscode][link_vscode]).

   In order to work on the code locally, you must clone this repository.
   To keep up with changes in the roar-legal-documents repository, you should pull those changes to your local repository before starting a new revision branch.

   ```Shell
   git pull origin main
   ```

1. **Create a [new branch][link_branches] to develop and maintain the proposed code changes.**

   Never alter your `main` branch. It should always reflect what is on the remote `main` branch. Instead, create a new branch for your edits. For example, starting from your `main` branch, you would create a new branch titled `doc/update-student-assent` with

   ```Shell
   git fetch origin  # Always start with an updated main branch
   git checkout -b doc/update-student-assent origin/main
   ```

   Please use appropriate branch names as those listed below:
     - `fix/<some-identifier>`: for bugfixes
     - `enh/<feature-name>`: for new features
     - `doc/<some-identifier>`: for documentation improvements.

   Repository maintainers may use the `enh` and `fix` prefixes. All legal document updates will probably use the `doc` prefix.

1. **Make your changes**

   Try to keep the changes focused: it is generally easy to review changes that
   address one issue at a time. Once you are satisfied with your local changes,
   [add/commit/push them][link_add_commit_push] to your feature branch.

1. **Submit a [pull request][link_pullrequest].**

   A member of the ROAR IRB maintaners team will review your changes to confirm
   that they can be merged into the main code base.

   Pull request titles should begin with a descriptive prefix
   (for example, `ENH: Adding another template`):
     - `DOC`: new or updated documentation
     - `ENH`: enhancements or new features
     - `FIX`: bug fixes
     - `TST`: new or updated tests
     - `STY`: style changes
     - `REF`: refactoring existing code
     - `CI`: updates to continous integration infrastructure
     - `MAINT`: general maintenance
     - For works-in-progress, add the `WIP` prefix in addition to the descriptive prefix.
       Pull-requests tagged with `WIP:` will not be merged until the tag is removed.

   Again, nearly all of the legal document changes will have the `DOC` prefix.

1. **Have your PR reviewed by the IRB maintainers team, and update your changes accordingly in your branch.**

   The reviewers will take special care in assisting you to address their
   comments, as well as dealing with conflicts and other tricky situations that
   can emerge from distributed development.

1. **Use the automatically generated `_diff` PDF documents to communicate with the IRB.**

   When you open a pull request that modifies any markdown file in this repository, a bot will detect those changes and generate documents that highlight the changes that you have made. The bot will generate change documents in both .pdf and .docx formats. The bot will comment on your pull request with a link to download these "diff" documents. These diff documents are useful for interacting with the IRB and ensuring that the changes to documents in this repository match the changes approved by the IRB. The bot takes a few minutes to run, so be sure to check the update timestamp at the bottom of the comment to ensure that you have the latest version of the diff documents.

[^1]: These contributing guidelines borrow language from [pyAFQ][link_pyafq]'s excellent [contribution guide][link_pyafq_contribution_guide].

[link_add_commit_push]: https://help.github.com/articles/adding-a-file-to-a-repository-using-the-command-line
[link_branches]: https://help.github.com/articles/creating-and-deleting-branches-within-your-repository/
[link_clone]: https://help.github.com/articles/cloning-a-repository
[link_git]: https://git-scm.com/
[link_github]: https://github.com/
[link_githubedit]: https://help.github.com/articles/editing-files-in-your-repository
[link_handbook]: https://guides.github.com/introduction/git-handbook/
[link_markdown]: https://daringfireball.net/projects/markdown
[link_pullrequest]: https://help.github.com/articles/creating-a-pull-request-from-a-fork
[link_pushpullblog]: https://www.igvita.com/2011/12/19/dont-push-your-pull-requests/
[link_pyafq]: https://github.com/yeatmanlab/pyAFQ
[link_pyafq_contribution_guide]: https://github.com/yeatmanlab/pyAFQ/blob/master/.github/CONTRIBUTING.md
[link_rick_roll]: https://www.youtube.com/watch?v=dQw4w9WgXcQ
[link_roar_irb_maintainers]: https://github.com/orgs/yeatmanlab/teams/roar-irb-maintainers
[link_swc_intro]: http://swcarpentry.github.io/git-novice/
[link_texteditor]: https://en.wikipedia.org/wiki/Text_editor
[link_vscode]: https://code.visualstudio.com/
[link_writing_formatting_github]: https://help.github.com/articles/getting-started-with-writing-and-formatting-on-github
