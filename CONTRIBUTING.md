<img width="1400" height="784" alt="header2" src="https://github.com/user-attachments/assets/00c5e50f-e3a3-4372-94b4-9405dade4ee8" />

# Contributing to Zitchdog (*Image unrelated)

Thank you for considering contributing to **Zitchdog**. Bug fixes, new plugin support, extras/ports for other tools, documentation improvements, and suggestions are welcome. The goal is to keep Zitchdog simple, and consistent.

## Getting Started

1. Fork the repository.
2. Create a new branch using the branch naming convention described below.
3. Make your changes.
4. Properly test your changes.
5. Commit your changes using Conventional Commits.
6. Push your branch and open a Pull Request.

> [!TIP]
> If you are unsure whether an idea fits the project, open an issue first and discuss it before implementing it.

<br />

### `A.1` Branch Names

Branch names should follow the same conventional style used for commits.

Use a valid Conventional Commit type as the branch prefix:

```text
feat/new-plugin-support
fix/issue-description
docs/update-readme
refactor/simplify-groups
chore/update-dependencies
```

Keep branch names brief and descriptive.

### `A.2` Commit Messages

Zitchdog uses Conventional Commits. Commits that do not follow this format will not be accepted.

#### Format

```
<type>(optional scope): <brief summary>
```

The summary should be brief, clear, meaningful, and written in lowercase.
An optional commit body can be added for extra context. Use a bullet list of short points describing the change:
```
<type>(optional scope): <brief summary>

- change one with description or info
- change two or info or fun point

CLOSES #X
```

#### Common Types

- `feat`: a new feature, new plugin support, or new extra/port
- `fix`: a bug fix
- `docs`: documentation changes
- `refactor`: code changes that do not add features or fix bugs
- `chore`: maintenance, dependencies, and other project tasks
- `init`: adding new files

#### Examples

```
feat(groups): add support for blink.cmp
fix(pine): correct contrast in visual selection
docs: update installation instructions
refactor: simplify palette table
init(extras): add ghostty port
```
```
fix(grape): correct low contrast in floating windows

- background and border colors were too close in value
- adjusted border color for better separation

CLOSES #14
```

#### Avoid

```
wip: working on something
update: fixed stuff
feat: new feature added
```

Commit messages should describe the actual change rather than using vague descriptions.

<br />

## `B.1` Issues and Suggestions

Issues and suggestions do not need to follow a formal writing style. Write them naturally and explain the problem or idea in your own words.

Keep the title brief, simple, and descriptive. Someone should be able to understand what the issue is about just by reading the title.

For example:

- telescope preview background does not match pine variant
- add support for noice.nvim
- add a port for ghostty
- low contrast in floating windows

Please do not overthink the wording. You are a human communicating an idea to other humans, and natural language is enough.

The use of AI to write or format simple issue reports is discouraged. There is no need to use AI for something as simple as explaining a bug or suggesting an idea.

Note that Zitchdog is a colorscheme, so there are no feature "enhancements" in the traditional sense. Contributions generally fall into one of these:

- Adding highlight group support for a new plugin.
- Adding a new extra/port for another tool (terminal, shell, editor, etc).
- Fixing or adjusting existing colors and contrast.

<br />

## `C.1` Code and Project Guidelines

- Keep the implementation simple.
- Follow the existing project structure and conventions.
- Use brief, lowercase comments when comments are necessary.
- Avoid unnecessary abstractions and complexity.
- Keep changes focused on the issue or plugin/extra being addressed.
- Do not modify unrelated parts of the project.
- Follow the Unix philosophy in spirit: prefer simple, focused solutions.
- Prefer the least complex implementation that solves the problem properly.
- Complex, niche, or unnecessary additions may not be accepted.
- A plugin or tool being popular does not necessarily mean it belongs in Zitchdog.

> [!IMPORTANT]
> Zitchdog aims to remain lightweight and straightforward rather than becoming a collection of support files for every possible plugin or tool.
> This section is paramount, kindly read section `C.1` before attempting anything.

### `C.1.1` Adding Plugin Support

If the plugin does not already have a highlight group file under `lua/zitchdog/groups`, follow the structure of an existing one (for example `telescope.lua` or `gitsigns.lua`). Match the naming and file conventions already used in that folder.

### `C.1.2` Adding Extras/Ports

New ports for other tools go under `extras/`. Follow the structure and naming used by existing ports (for example `extras/kitty` or `extras/tmux`), and make sure the colors match the existing palette for the variant(s) you are porting.

## `C.2` Testing

Properly test your changes before pushing them.

Since Zitchdog is a colorscheme, testing means visually verifying and using the test scripts provided in the `tests/` folder. (instructions provided within the files.)

Before opening a Pull Request:

- Load the theme in Neovim and check all available variants.
- Confirm the highlight groups you added or changed render correctly against the plugin or UI element in question.
- Make sure existing variants and plugin support have not been broken.
- try using the test scripts within the `tests/` folder
- If you added a port under `extras/`, confirm it actually applies correctly in that tool.

### CI Pipeline

CI runs on every push to main and on every pull request via GitHub Actions (.github/workflows/ci.yml). It checks out the repo, verifies formatting with stylua --check lua/, installs luacheck, and runs luacheck lua/ --globals vim. A PR will not merge if either check fails.

#### Pre-push Git Hook

A local pre-push hook mirrors part of the CI checks before code leaves your machine:

Runs stylua --check lua/. If formatting issues are found, it auto-fixes with stylua lua/, prints the diff stat, and blocks the push so you can review and re-commit.
Runs ./scripts/verify-noop.sh to confirm no-op behavior is preserved.
Only allows the push through if all checks pass.

> [!NOTE]
> Lazygit users, don't forget to format your code before committing.

## `C.3` Project Assets and Documentation

Do not modify or replace existing project assets unless the change specifically concerns that asset.

This includes:

- Header images
- Screenshots
- Other images in docs/assets
- Badges
- Pre-set documentation
- Existing project information
- README presentation and formatting

Do not change these simply as part of an unrelated fix or addition.

If a color or variant change alters how a theme looks, update the relevant screenshot(s) in `docs/assets` to reflect it.

If documentation needs to be changed because of your contribution, update only the relevant documentation (text only).

## `C.4` Pull Requests

When opening a Pull Request:

- Explain what the change does.
- Explain why the change is needed.

Reference related issues when applicable:

```
Fixes #9
```

- Keep the Pull Request focused.
- Include before/after screenshots for visual changes.
- Avoid unrelated changes.
- Follow the branch and commit conventions described above.

Pull Requests may be adjusted during review to keep the implementation simple and consistent with the project's philosophy.

<br />

## `D.1` Suggestions and Issues

Suggestions are welcome! Help me out!

<br />
<br />

> [!NOTE]
> Keep it simple. Explain the problem, suggest a solution if you have one, and let me figure out the rest.<br />
> And make sure to read section [C](https://github.com/theamallalgi/zitchdog/blob/main/CONTRIBUTING.md#c1-code-and-project-guidelines) before any changes.
