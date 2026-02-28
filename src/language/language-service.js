const fs = require('fs')
const LinkedList = require('./linked-list')
const { DATA_FILE } = require('../config')

function readData() {
  return JSON.parse(fs.readFileSync(DATA_FILE, 'utf8'))
}

function writeData(data) {
  fs.writeFileSync(DATA_FILE, JSON.stringify(data, null, 2))
}

const LanguageService = {
  getUsersLanguage() {
    const data = readData()
    return data.language
  },

  getLanguageWords() {
    const data = readData()
    return data.words
  },

  getHead() {
    const data = readData()
    const headWord = data.words.find(w => w.id === data.language.head)
    return {
      nextWord: headWord.original,
      correctCount: headWord.correct_count,
      incorrectCount: headWord.incorrect_count,
      score: data.language.total_score,
    }
  },

  createLL(head) {
    const data = readData()
    const wordMap = new Map(data.words.map(w => [w.id, w]))
    const wordLL = new LinkedList()
    let currentId = head
    while (currentId !== null && currentId !== undefined) {
      const word = wordMap.get(currentId)
      if (!word) break
      wordLL.insertLast(word)
      currentId = word.next
    }
    return wordLL
  },

  updateTable(language, root) {
    const data = readData()
    data.language = { ...data.language, ...language }
    let current = root
    while (current !== null) {
      const idx = data.words.findIndex(w => w.id === current.val.id)
      if (idx !== -1) {
        data.words[idx] = { ...data.words[idx], ...current.val }
      }
      current = current.next
    }
    writeData(data)
  },
}

module.exports = LanguageService
