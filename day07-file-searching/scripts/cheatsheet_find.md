# FIND Cheat Sheet (Essentials)

## Match
- By name: `find . -name "*.log"`
- Case-insensitive: `find . -iname "*.png"`
- By type: `-type f` (file), `-type d` (dir), `-type l` (symlink)
- Regex (GNU): `find . -regex '.*report_v[0-9]+\.txt'`

## Size / Time
- Bigger than 10MB: `-size +10M`
- Between: `-size +1M -size -5M`
- Modified last 15 mins: `-mmin -15`
- Modified last 2 days: `-mtime -2`

## Permissions / Owner
- Executable: `-perm -111`
- Owner: `-user alice`, Group: `-group dev`

## Exclude heavy paths
find . -path "./node_modules" -prune -o -type f -print

markdown
Copy
Edit

## Exec patterns
- Print then exec: `-exec cmd {} \;` (one-by-one)
- Batch with xargs (fast): `-print0 | xargs -0 cmd`
- Safe delete empties: `find . -type f -empty -delete`

## Rich output
find . -type f -printf '%p|%f|%s|%TY-%Tm-%Td %TH:%TM\n'

markdown
Copy
Edit

## Gotchas
- Always quote globs: `"*.log"`
- Use `-print0` + `xargs -0` for spaces/newlines
- Test with `-print` before `-delete`