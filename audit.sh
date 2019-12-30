for dir in */; do
  (
    cd "$dir" || exit
    for sdir in */; do
      (
        cd "$sdir" || exit
        npm audit
      )
    done
  )
done
