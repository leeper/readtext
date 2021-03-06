context("test readtext methods")

test_that("test print.readtext", {
    
    expect_that(
        print(readtext( '../data/fox/fox.txt')),
        prints_text('readtext object consisting of 1 document and 0 docvars.')
    )
    
    testreadtext <- readtext(
        c(
            '../data/fruits/apple.txt',
            '../data/fruits/orange.txt'
        )
    )
    expect_that(
        print(testreadtext),
        prints_text('readtext object consisting of 2 documents and 0 docvars.')
    )
    
    expect_that(
        print(readtext('../data/csv/test.csv', textfield='text')),
        prints_text('readtext object consisting of 2 documents and 2 docvars.')
    )
})


test_that("test as.character.readtext", {
    tmp <- readtext('../data/csv/test.csv', textfield='text')
})