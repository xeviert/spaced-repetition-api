const express = require('express')
const LanguageService = require('./language-service')

const languageRouter = express.Router()
const jsonBodyParser = express.json()

languageRouter.use(async (req, res, next) => {
  try {
    const language = LanguageService.getUsersLanguage()
    if (!language)
      return res.status(404).json({ error: `No language configured` })
    req.language = language
    next()
  } catch (error) {
    next(error)
  }
})

languageRouter.get('/', async (req, res, next) => {
  try {
    const words = LanguageService.getLanguageWords()
    res.json({
      language: req.language,
      words,
    })
    next()
  } catch (error) {
    next(error)
  }
})

languageRouter.get('/head', async (req, res, next) => {
  try {
    const head = LanguageService.getHead()
    res.status(200).send(head)
  } catch (error) {
    next(error)
  }
})

languageRouter.post('/guess', jsonBodyParser, async (req, res, next) => {
  try {
    const { guess } = req.body
    if (!guess)
      return res.status(400).send({ error: `Missing 'guess' in request body` })

    const wordLL = LanguageService.createLL(req.language.head)

    if (guess === wordLL.head.val.translation) {
      wordLL.head.val.correct_count++
      wordLL.head.val.memory_value *= 2
      req.language.total_score++
    } else {
      wordLL.head.val.incorrect_count++
      wordLL.head.val.memory_value = 1
    }

    const isCorrect = guess === wordLL.head.val.translation
    const answeredWord = wordLL.head.val

    let currentHead = wordLL.head
    wordLL.head = wordLL.head.next
    wordLL.insertAt(currentHead.val.memory_value, currentHead)
    req.language.head = wordLL.head.val.id

    LanguageService.updateTable(req.language, wordLL.head)

    res.send({
      nextWord: wordLL.head.val.original,
      correctCount: wordLL.head.val.correct_count,
      incorrectCount: wordLL.head.val.incorrect_count,
      score: req.language.total_score,
      translation: answeredWord.translation,
      isCorrect: guess === answeredWord.translation,
    })
  } catch (error) {
    next(error)
  }
})

module.exports = languageRouter
