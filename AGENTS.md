# AGENTS.md — Produceologia

> Guidance for coding agents working in this repo. Learned from 2026-09-24 commit session.

## 1. Project snapshot

- MkDocs-Material docs repo (`pyproject.toml`: `produceologia 0.1.0`, `requires-python >=3.12`, deps `mkdocs`, `mkdocs-material`).
- Layout: `docs/` (Catalog / Production / Breviarium / Finance), `web/`, `research/`, plus `build.sh`, `deploy.sh`, `Dockerfile`, `README.md`.
- Branch `main` tracks `origin/main` (`git@github.com:csiglab/Produceologia.git`).

## 2. Mandatory git workflow

Global config (do not change):

- `core.hooksPath=~/configs/global/git/hooks`
- `commit.gpgsign=true` (SSH via 1Password). Never use `--no-verify`, never skip hooks.
- Pre-commit chain: `pre-commit` runs `pre-commit.d/*.sh`. `post-commit` auto-cleans marks.

### 2.1 Positive marking policy (`00-authorization-policy.sh`)

- Every staged `ACM` file must have xattr `user.checkin=1`, else commit fails with `Error: Required check mark is missing.`
- Correct sequence per file set:
  1. `git status`, `git diff`, `git log --oneline -5`
  2. `git add <intended files only>`
  3. `git diff --cached` (verify only intended files)
  4. `mark-for-commit <same files>`
  5. Verify: `getfattr -n user.checkin <file>` should show `user.checkin="1"`
  6. `git commit`
- Helpers: `mark-for-commit --list`, `mark-for-commit --unmark <file>`.
- On hook rejection: run the printed `mark-for-commit ...` command, retry as a NEW commit. Do not amend the failed commit.

### 2.2 Annotation policy (`01-annotation-policy.sh`, `annotations.conf`)

- `BLOCK=@WORKING @FIXME @QUESTION @VERIFY` rejects commit; `WARN=@TODO @HACK @WORKAROUND`; `INFO=@TECH-DEBT @REFACTOR @OPTIMIZE @RATIONALE @NOTE`.
- Only `FILES` patterns in `annotations.conf` are inspected (code/config extensions). `*.md` is NOT listed, so Markdown bypasses this check.

### 2.3 Encoding policy (`02-encoding-policy.sh`)

- Staged text files must be UTF-8 (us-ascii accepted), no BOM (`EF BB BF`), LF only.
- Same `FILES` filter applies, so `*.md` currently bypasses enforcement — still write LF UTF-8 without BOM.
- Fixes: `iconv -f <encoding> -t UTF-8 <file>`, `dos2unix <file>` (or `sed -i 's/\r$//'`), `sed -i '1s/^\xEF\xBB\xBF//' <file>`.

### 2.4 Commit format and push

- Use atomic commits (e.g. `5e34ba0` link fix in `docs/Catalog/Firm/README.md`, `f565155` new `docs/.../Beef-Cattle-Production.md`).
- Match history format:
  ```
  type(main): message

  body? optional

  Appended Information:
  - <path>
  ```
- Before push: `git status` clean, `git log --oneline -3`, `git diff origin/main..main --stat`, `git branch -vv`. Then `git push origin main`.
- Never commit secrets. Stage only intended files.

## 3. Agent tool conventions

- Prefer `Read` / `Glob` / `Grep` over `bash cat/grep/find/sed/awk/echo`. Reserve `bash` for git, build, and short read-only checks.
- Run `bash` with `workdir=` instead of `cd`. Quote paths with spaces. Use `/tmp/opencode` for temp work.
- Use `TodoWrite` for 3+ step work (one `in_progress` at a time). Parallelize independent reads.
- Verify by execution: run checks/tests, inspect `git status/diff/log`, `file --mime-encoding`, BOM/LF checks. Report evidence, not speculation.
