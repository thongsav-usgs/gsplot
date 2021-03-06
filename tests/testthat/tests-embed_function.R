context("embedding functions")

test_that("points to callouts", {
  
  gs <- points(gsplot(), c(0,3), c(2,4), callouts(labels=c('dogs','cats')))
  expect_equal(names(gs$view),c('points','callouts','window'))

})

test_that("lines to callouts", {
  
  gs <- lines(gsplot(), c(0,3), c(2,4), callouts(labels=c('dogs','cats')))
  expect_equal(names(gs$view),c('lines','callouts','window'))
  
})

test_that("usr args aren't overidden", {
  
  gs <- lines(gsplot(), c(0,3), c(2,4), callouts(labels=c('dogs','cats'), col='yellow'))
  expect_equal(gs$view$callouts$col, 'yellow')
  gs <- points(gsplot(), c(0,3), c(2,4), callouts(labels=c('dogs','cats'), col='yellow'))
  expect_equal(gs$view$callouts$col, 'yellow')
  
})

test_that("multiple functions can be embedded", {
  
  gs <- lines(gsplot(), c(0,3), c(2,4), callouts(labels=c('dogs','cats'), col='yellow'), error_bar(x.low=c(NA,1), col='red'), error_bar(x.low=c(0.5,NA), col='green'))
  expect_equal(gs$view$callouts$col, 'yellow')
  expect_equal(gs$view[[3]]$col, 'red')
  expect_equal(gs$view[[4]]$col, 'green')
  gs <- points(gsplot(), c(0,3), c(2,4), callouts(labels=c('dogs','cats'), col='yellow'))
  expect_equal(gs$view$callouts$col, 'yellow')
  
})