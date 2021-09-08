# Contributing to nv

## Getting started

If you want to help but don't know where to start:
- Try [good first issue](https://github.com/shift-d/nv/labels/good-first-issue)
- Have a look at [roadmaps](https://github.com/shift-d/nv/labels/roadmap) and it's tasks

## Reporting problems
- [Search existing issues](https://github.com/shift-d/nv/issues) (including closed!)
- If you have modified nv - back it up and reinstall fresh nv. If issue persists - [bisect](https://neovim.io/doc/user/starting.html#bisect) it to find out which part of config causes an issue

## Developer guidelines
- Have a look at README.md's directory overview and follow it.
- Use [conventional commit names](https://www.conventionalcommits.org/en/v1.0.0/)
- Run `stylua` on every lua file except `lua/plugins.lua` (`use ...` without braces is more readable)

## Pull requests
- Once you start working on a feature - create a draft request, so your work won't interop with someone else's
- Keep it simple and small
- Avoid changes to files you're not working on

## Draft PR
1. Ensure that draft PR does not already exist
2. Follow PR structure if it is possible
3. Create roadmap
```md
- [ ] Unfinished task
- [X] Finished task
```

## Adding plugin

### PR structure
1. Reason why it must be added
2. Lua/Viml plugin
3. Is crossplatform or not

## Adding feature

### PR structure
1. Reason why it must be added
2. Lua/Viml feature
3. Is crossplatform or not
4. Contains breaking changes or not

## Extending docs

### PR structure
1. Docs section
2. Quick overview of changes
