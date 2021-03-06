
diff_so_fancy="$BATS_TEST_DIRNAME/../diff-so-fancy"

load_fixture() {
  local name="$1"
  cat "$BATS_TEST_DIRNAME/fixtures/${name}.diff"
}


# applying colors so ANSI color values will match
# FIXME: not everyone will have these set, so we need to test for that.
git config color.diff.meta "yellow bold"
git config color.diff.commit "green bold"
git config color.diff.frag "magenta bold"
git config color.diff.old "red bold"
git config color.diff.new "green bold"
git config color.diff.whitespace "red reverse"

git config color.diff-highlight.oldNormal "red bold"
git config color.diff-highlight.oldHighlight "red bold 52"
git config color.diff-highlight.newNormal "green bold"
git config color.diff-highlight.newHighlight "green bold 22"
