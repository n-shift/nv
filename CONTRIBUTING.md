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
