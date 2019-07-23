context("test-themes")

# Theme AV ----
test_that("theme_AV works", {
  thm <- theme_AV()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "Calibri")
  expect_equal(thm$plot.title$family, "Calibri")
  expect_equal(thm$legend.title$family, "Calibri")
  expect_equal(thm$legend.text$family, "Calibri")
  ## size
  expect_equal(thm$text$size, 14)
  expect_equal(thm$plot.title$size, 18)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 12)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## color
  expect_equal(thm$text$colour, "#F9FEFF")
  expect_equal(thm$plot.title$colour, "#F9FEFF")
  expect_equal(thm$plot.subtitle$colour, "#F9FEFF")
  expect_equal(thm$axis.text$colour, "#F9FEFF")
  expect_equal(thm$axis.title$colour, "#F9FEFF")
  expect_equal(thm$legend.text$colour, "#F9FEFF")
  expect_equal(thm$legend.title$colour, "#F9FEFF")
  expect_equal(thm$legend.position, "bottom")
  ## background
  expect_equal(thm$plot.background$fill, "#009BA7")
  ## panel
  expect_equal(thm$panel.grid$colour, "#505159")
})

# Theme AVgrey ----
test_that("theme_AVgrey works", {
  thm <- theme_AVgrey()
  expect_s3_class(thm, "theme")
  ## font
  expect_equal(thm$text$family, "")
  expect_null(thm$plot.title$family)
  expect_null(thm$legend.title$family)
  expect_null(thm$legend.text$family)
  ## size
  expect_equal(thm$text$size, 14)
  expect_equal(thm$plot.title$size, 18)
  expect_equal(thm$plot.subtitle$size, 12)
  expect_equal(thm$axis.text$size, 10)
  expect_equal(thm$axis.title$size, 14)
  expect_equal(thm$legend.text$size, 9)
  expect_equal(thm$legend.title$size, 10)
  ## color
  expect_equal(thm$text$colour, "#fee8c8")
  expect_equal(thm$plot.title$colour, "#FFD235")
  expect_equal(thm$plot.subtitle$colour, "#fee8c8")
  expect_equal(thm$axis.text$colour, "#fee8c8")
  expect_equal(thm$axis.title$colour, "#fee8c8")
  expect_equal(thm$legend.text$colour, "#ffffff")
  expect_equal(thm$legend.title$colour, "#ffffff")
  expect_equal(thm$legend.position, "bottom")
})
