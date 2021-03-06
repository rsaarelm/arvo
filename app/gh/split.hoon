!:
|%
::  Splits a path into the endpoint prefix and the remainder,
::  which is assumed to be a path within the JSON object.  We
::  choose the longest legal endpoint prefix.
::
++  split
  |=  pax/path
  ::  =-  ~&  [%pax pax - (valid-endpoint pax)]  -
  =+  l=(lent pax)
  |-  ^-  {path path}
  ?~  l
    [~ pax]
  ?:  ?=(valid-endpoint (scag l pax))
    [(scag l pax) (slag l pax)]
  $(l (dec l))
::
::  These are all the github GET endpoints, sorted with
::  `env LC_ALL=C sort`
::
++  valid-endpoint
  $?  {$emojis $~}
      {$events $~}
      {$feeds $~}
      {$gists $public $~}
      {$gists $starred $~}
      {$gists gist-id/@ta $comments id/@ta $~}
      {$gists gist-id/@ta $comments $~}
      {$gists id/@ta $commits $~}
      {$gists id/@ta $forks $~}
      {$gists id/@ta $star $~}
      {$gists id/@ta sha/@ta $~}
      {$gists id/@ta $~}
      {$gists $~}
      {$gitignore $templates language/@ta $~}
      {$gitignore $templates $~}
      {$issues $~}
      {$licenses license/@ta $~}
      {$licenses $~}
      {$meta $~}
      {$networks onwer/@ta repo/@ta $events $~}
      {$notifications $threads id/@ta $subscription $~}
      {$notifications $threads id/@ta $~}
      {$notifications $~}
      {$organizations $~}
      {$orgs org/@ta $events $~}
      {$orgs org/@ta $hooks id/@ta $~}
      {$orgs org/@ta $hooks $~}
      {$orgs org/@ta $members username/@ta $~}
      {$orgs org/@ta $members $~}
      {$orgs org/@ta $memberships username/@ta $~}
      {$orgs org/@ta $migrations id/@ta $archive $~}
      {$orgs org/@ta $migrations id/@ta $~}
      {$orgs org/@ta $migrations $~}
      {$orgs org/@ta $'public_members' username/@ta $~}
      {$orgs org/@ta $'public_members' $~}
      {$orgs org/@ta $repos $~}
      {$orgs org/@ta $teams $~}
      {$orgs org/@ta $~}
      {$'rate_limit' $~}
      {$repos owner/@ta repo/@ta $assignees assignee/@ta $~}
      {$repos owner/@ta repo/@ta $assignees $~}
      {$repos owner/@ta repo/@ta $branches branch/@ta $~}
      {$repos owner/@ta repo/@ta $branches $~}
      {$repos owner/@ta repo/@ta $collaborators username/@ta $~}
      {$repos owner/@ta repo/@ta $collaborators $~}
      {$repos owner/@ta repo/@ta $comments id/@ta $~}
      {$repos owner/@ta repo/@ta $comments $~}
      {$repos owner/@ta repo/@ta $commits ref/@ta $comments $~}
      {$repos owner/@ta repo/@ta $commits ref/@ta $status $~}
      {$repos owner/@ta repo/@ta $commits ref/@ta $statuses $~}
      {$repos owner/@ta repo/@ta $commits sha/@ta $~}
      {$repos owner/@ta repo/@ta $commits $~}
      {$repos owner/@ta repo/@ta $compare base-head/@ta $~}
      {$repos owner/@ta repo/@ta $contents path/@ta $~}
      {$repos owner/@ta repo/@ta $contributors $~}
      {$repos owner/@ta repo/@ta $deployments id/@ta $statuses $~}
      {$repos owner/@ta repo/@ta $deployments $~}
      {$repos owner/@ta repo/@ta $events $~}
      {$repos owner/@ta repo/@ta $forks $~}
      {$repos owner/@ta repo/@ta $git $blobs sha/@ta $~}
      {$repos owner/@ta repo/@ta $git $commits sha/@ta $~}
      {$repos owner/@ta repo/@ta $git $refs ref/@ta $~}
      {$repos owner/@ta repo/@ta $git $refs $~}
      {$repos owner/@ta repo/@ta $git $tags sha/@ta $~}
      {$repos owner/@ta repo/@ta $git $trees sha/@ta $~}
      {$repos owner/@ta repo/@ta $hooks id/@ta $~}
      {$repos owner/@ta repo/@ta $hooks $~}
      {$repos owner/@ta repo/@ta $issues $comments id/@ta $~}
      {$repos owner/@ta repo/@ta $issues $comments $~}
      {$repos owner/@ta repo/@ta $issues $events id/@ta $~}
      {$repos owner/@ta repo/@ta $issues $events $~}
      {$repos owner/@ta repo/@ta $issues issue-number/@ta $events $~}
      {$repos owner/@ta repo/@ta $issues number/@ta $comments $~}
      {$repos owner/@ta repo/@ta $issues number/@ta $labels $~}
      {$repos owner/@ta repo/@ta $issues number/@ta $~}
      {$repos owner/@ta repo/@ta $issues $~}
      {$repos owner/@ta repo/@ta $keys id/@ta $~}
      {$repos owner/@ta repo/@ta $keys $~}
      {$repos owner/@ta repo/@ta $labels name/@ta $~}
      {$repos owner/@ta repo/@ta $labels $~}
      {$repos owner/@ta repo/@ta $language $~}
      {$repos owner/@ta repo/@ta $license $~}
      {$repos owner/@ta repo/@ta $milestones number/@ta $labels $~}
      {$repos owner/@ta repo/@ta $milestones number/@ta $~}
      {$repos owner/@ta repo/@ta $milestones $~}
      {$repos owner/@ta repo/@ta $notifications $~}
      {$repos owner/@ta repo/@ta $pages $builds $latest $~}
      {$repos owner/@ta repo/@ta $pages $builds $~}
      {$repos owner/@ta repo/@ta $pages $~}
      {$repos owner/@ta repo/@ta $pulls $comments id/@ta $~}
      {$repos owner/@ta repo/@ta $pulls $comments $~}
      {$repos owner/@ta repo/@ta $pulls number/@ta $comments $~}
      {$repos owner/@ta repo/@ta $pulls number/@ta $commits $~}
      {$repos owner/@ta repo/@ta $pulls number/@ta $files $~}
      {$repos owner/@ta repo/@ta $pulls number/@ta $merge $~}
      {$repos owner/@ta repo/@ta $pulls number/@ta $~}
      {$repos owner/@ta repo/@ta $pulls $~}
      {$repos owner/@ta repo/@ta $readme $~}
      {$repos owner/@ta repo/@ta $releases $assets id/@ta $~}
      {$repos owner/@ta repo/@ta $releases $latest $~}
      {$repos owner/@ta repo/@ta $releases $tags tag/@ta $~}
      {$repos owner/@ta repo/@ta $releases id/@ta $assets $~}
      {$repos owner/@ta repo/@ta $releases id/@ta $~}
      {$repos owner/@ta repo/@ta $releases $~}
      {$repos owner/@ta repo/@ta $stargazers $~}
      {$repos owner/@ta repo/@ta $stats $'commit_activity' $~}
      {$repos owner/@ta repo/@ta $stats $contributors $~}
      {$repos owner/@ta repo/@ta $stats $participation $~}
      {$repos owner/@ta repo/@ta $stats $'punch_card' $~}
      {$repos owner/@ta repo/@ta $subscribers $~}
      {$repos owner/@ta repo/@ta $subscription $~}
      {$repos owner/@ta repo/@ta $tags $~}
      {$repos owner/@ta repo/@ta $teams $~}
      {$repos owner/@ta repo/@ta archive-format/@ta ref/@ta $~}
      {$repos owner/@ta repo/@ta $~}
      {$repositories $~}
      {$search $code $~}
      {$search $issues $~}
      {$search $repositories $~}
      {$search $users $~}
      {$teams id/@ta $members $~}
      {$teams id/@ta $memberships username/@ta $~}
      {$teams id/@ta $repos owner/@ta repo/@ta $~}
      {$teams id/@ta $~}
      {$user $emails $~}
      {$user $followers $~}
      {$user $following username/@ta $~}
      {$user $following $~}
      {$user $issues $~}
      {$user $keys id/@ta $~}
      {$user $keys $~}
      {$user $memberships $orgs org/@ta $~}
      {$user $memberships $orgs $~}
      {$user $orgs $~}
      {$user $repos $~}
      {$user $starred owner/@ta repo/@ta $~}
      {$user $starred $~}
      {$user $subscriptions $~}
      {$user $teams $~}
      {$user username/@ta $orgs $~}
      {$user $~}
      {$users username/@ta $events $orgs org/@ta $~}
      {$users username/@ta $events $public $~}
      {$users username/@ta $events $~}
      {$users username/@ta $followers $~}
      {$users username/@ta $following target-user/@ta $~}
      {$users username/@ta $following $~}
      {$users username/@ta $gists $~}
      {$users username/@ta $keys $~}
      {$users username/@ta $'received_events' $public $~}
      {$users username/@ta $'received_events' $~}
      {$users username/@ta $starred $~}
      {$users username/@ta $subscriptions $~}
      {$users username/@ta $~}
      {$users usernmae/@ta $repos $~}
      {$users $~}
  ==
--
