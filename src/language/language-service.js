const LinkedList = require("./linked-list")

const LanguageService = {
  getUsersLanguage(db, user_id) {
    return db
      .from('language')
      .select(
        'language.id',
        'language.name',
        'language.user_id',
        'language.head',
        'language.total_score',
      )
      .where('language.user_id', user_id)
      .first()
  },

  getLanguageWords(db, language_id) {
    return db
      .from('word')
      .select(
        'id',
        'language_id',
        'original',
        'translation',
        'next',
        'memory_value',
        'correct_count',
        'incorrect_count',
      )
      .where({ language_id })
  },

  getNextWord(db, user_id) {
    return db
      .from('language')
      .select(
        'language.head',
        'word.correct_count',
        'word.incorrect_count',
        'language.total_score',
        'word.original',
        'word.translation'
      )
      .where('language.user_id', user_id)
      .first()
      .leftJoin('word', 'language.head', 'word.id')
  },

  patchLanguage(db, id, newLanguage){
    return db
    .from("language")
    .where({id})
    .update({...newLanguage})
    .returning('*')
    .then(rows => rows[0])
  },

  patchWord(db, id, newWord){

    return db
    .from("word")
    .where({id})
    .update({...newWord})
    .returning('*')
    .then(rows => rows[0])
  },

  async updateTable(db, language, root) {
    await this.patchLanguage(db, language.id, language)
   while (root !== null){
     await this.patchWord(db, root.val.id, root.val)
     root = root.next;
   }
  }, 
  getLanguageWords(db, language_id) {
    return db
      .from("word")
      .select(
        "id",
        "language_id",
        "original",
        "translation",
        "next",
        "memory_value",
        "correct_count",
        "incorrect_count"
      )
      .where({ language_id });
  },
  getHead(db, language_id) {
    return db
      .from("word")
      .innerJoin('language', 'word.id', '=', 'language.head')
      .select({
        "nextWord": 'original',
        "correctCount": 'correct_count',
        "incorrectCount": 'incorrect_count',
        "score": 'total_score'
      })
      .where({language_id})
      .first();
  },

  async createLL(db, head) {
    const wordLL = new LinkedList();
    const headWord = await db
                      .from("word")
                      .select('*')
                      .where({id: head})
                      .first();
    let current = headWord;
    while (current !== undefined) {
      wordLL.insertLast(current);
      current = await db
        .from("word")
        .select('*')
        .where({id: current.next})
        .first();
    }
    return wordLL;
  } 
}

module.exports = LanguageService
