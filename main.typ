#set page(
  paper: "a5",
  margin: (
	//for printing
    //inside: 0.75in, 
    //outside: 0.5in,
    x: 0.5in,
    y: 0.5in
  )
)

#set text(font: "Noto Sans") 


#show heading: set align(center + horizon)

= Chinese-English Frequency Dictionary \ for Language Learners

#v(1em)

#align(center,block[
  With Simple Example Sentences Using Only Previously Defined Words and Characters
])

#align(bottom + center, block[
  First Edition (Draft 2)
])


// #set footnote.entry(indent: 0em)

#pagebreak()

#pagebreak()

#show outline: it => {
  show heading: set block(below: 2em)
  it
}

#outline(
  target: heading.where(level: 2)
)

#pagebreak()


//#set heading(numbering: none)
#counter(page).update(1) 
#set page(
  numbering: "i"
)

#let hsk_count = 600
#let total_words = 2000
#let remaining_words = total_words - hsk_count

#v(4em)

== Preface

#v(2.5em)

#set par(
  first-line-indent: 1.5em,
)


The following words are ordered such that you can read each example sentence for that word using only previously used words. The first #hsk_count words are from HSK 1, 2 and 3. The remaining #remaining_words words are from a list of common words. The reason HSK 4 words are not used is that starting from HSK 4, many words are not used in everyday language, which is the purpose of this book.#footnote[There is still decent overlap between the frequency words and the HSK 4 words.]

The HSK sentences are taken from the WuxiaLearn app, #footnote[Available at https://github.com/wuxialearn/wuxialearn. The sentences have been heavily modified but the word units are mostly the same.] which is divided into topic-based units such as work, school, food etc. This means that the first #hsk_count words will be semantically ordered, as opposed to the last #remaining_words, which will be ordered by word frequency.

The word frequency list is taken from the SUBTLEX-CH word frequency dataset compiled by Qing Cai and Marc Brysbaert at Ghent University.#footnote[Cai, Q., & Brysbaert, M. (2010). SUBTLEX-CH: Chinese Word and Character Frequencies Based on Film Subtitles. Plos ONE, 5(6), e10729.] The list is based on a corpus of film and television subtitles totalling 46.8 million characters and 33.5 million words. It should better reflect everyday Chinese language usage than document based datasets,#footnote[Several Chinese frequency lists exist, such as #box[现代汉语常用词表] (List of Common Words in Modern Chinese) by the Ministry of Education of the People's Republic of China. Some only provide frequencies for characters, which is not as useful in my opinion. Others are based on literary sources or newspapers. I chose SUBTLEX-CH based on the arguments made by the authors in their paper.] although it is biased towards the events that take place in TV and movies. For example, #box[警察] (jǐng chá) - _police_ is the 319#super[th] most frequent word in the dataset, but I expect it is much less frequently used in everyday Chinese.#footnote[There are dozens of similar entires such as multiple words meaning "murder" or "murderer" and words like "clue," "shoot," "gun," "bomb,""court room," "federal," "detective" and "kidnap." We can call these "drama words." I also removed most of them from the list entirely, and you can ignore the ones I left in mostly without issue. At the same time, common but mundane words that are not discussed in movies and TV are lower in the list than they should be. /*In my view, even if the frequency values are skewed for some words, this distortion should still be mostly limited to those words, and should not apply evenly across the dataset as is the case with document based datasets.*/ Towards the end of the project, the number of such words increased significantly. There were also words that aren't strictly "drama words" that still stuck out as too high in the list. For example #box[病毒] - virus was at 2,225 while #box[感冒] - to catch a cold and #box[发烧] - fever were at 4,305 and 5,840, respectively. After going through the entire 2,000 words from this dataset I can say that it's not a perfect representation of spoken Chinese, even after removing all the obvious drama words.]

Words already used in the HSK 1-3 section are removed from the frequency section, as well as words that might be obvious to the reader and personal names. Some single character words were also removed.#footnote[Some single characters words are rarely used on their own and their inclusion in the dataset is likely due to the limitations of automatic Chinese word segmentation in 2010. A reimplementation of SUBTLEX-CH with a modern tokenizer would solve this problem. In some cases I swapped a single character word for a two character one if it made sense (eg. 投 #sym.arrow.r 投进). In other cases I tried to use them anyway.] Rarely, I moved a word up in the list so it could be used earlier in other sentences. In sentences, words that have not yet been used but would be immediately obvious are allowed. For example, #box[国外] - _abroad_ is not a sub-#total_words frequency word, but 国 - _country_ and 外 - _outside_ are, and in the context used its meaning is obvious. Once the reader has seen 国 and 外, #box[国外] can be used in a sentence. These become more common with the progression of the book.

The general goal is that you should be able to read through the book linearly and read all the sentences without having to look at the translations. #footnote[Or, more accurately, to be able to get a mostly complete idea of the meaning of the sentence without having to skip over any of the words. If you have to skip two words or even one word to read a sentence it is unlikely that you understood it. In classic dictionaries there are often more unknown words than known words in an example sentence, especially at the first few hundred words. At the same time, sentences that are overly bland - eg. "he likes [noun], that thing is [adjective]" etc. - aren't so helpful either. Ideally. you want uniformly to reuse previous words, but this is difficult to achieve in practice and many words only end up used once while others are used much more. Additionally, sentences formed using a constrained set of allowed words will be much less natural than regular example sentences.] The benefit of this method is that you can learn new vocabulary and practice reading at the same time. Additionally, the example sentences should make the words click better when you can read the entire sentence, hopefully improving retention.

Finally, a tip: use an index card or bookmark to cover up the sentence translations so you can practice reading the Chinese forms. This is why the Chinese sentences, pinyin and translations are all on separate lines compared to most dictionaries that have them all in one paragraph.

#pagebreak()

#set par(
  first-line-indent: (amount: 0em, all: false),
)

#counter(page).update(1) 

#set page(
  numbering: none
)

#let word-counter = counter("word-counter")

#word-counter.step()

#set par(spacing: 0.65em)



#set page(
  numbering: "1"
)


#let word-entry(word, word_pinyin, word_meaning, sentence, sentence_pinyin, sentence_meaning) = block(breakable: false)[
  #v(1em)
  #grid(
    columns: (1fr, 30%),
    rows: 1,
    //stroke: red,
    block([  
      #context word-counter.display(). *#word* (#word_pinyin) #word_meaning
      #v(0.5em)
      #sentence
  
      #sentence_pinyin
  
      #sentence_meaning
    ]),
    align(right + top)[
      #set text(18pt, rgb("#4e4e4e"))
      #word
    ])
]

== HSK 1-2 words

#let wordlist = csv("hsk1-2.csv", delimiter: "\t", row-type: dictionary)

#for entry in wordlist{ 
  word-entry(
    entry.word,
    entry.word_pinyin,
    entry.word_meaning,
    entry.sentence.replace(" ", ""),
    entry.sentence_pinyin,
    entry.sentence_meaning,
  )
  word-counter.step()
}

#pagebreak()

== HSK 3 words

#let wordlist = csv("hsk3.csv", delimiter: "\t", row-type: dictionary)

#for entry in wordlist{ 
  word-entry(
    entry.word,
    entry.word_pinyin,
    entry.word_meaning,
    entry.sentence.replace(" ", ""),
    entry.sentence_pinyin,
    entry.sentence_meaning,
  )
  word-counter.step()
}

#pagebreak()

== Frequency words


#let wordlist = csv("freq words.csv", delimiter: "\t", row-type: dictionary)

#for entry in wordlist{ 
  word-entry(
    entry.word,
    entry.word_pinyin,
    entry.word_meaning,
    entry.sentence.replace(" ", ""),
    entry.sentence_pinyin,
    entry.sentence_meaning,
  )
  word-counter.step()
}


/*
== Credits

#pagebreak()

#show heading: set align(left + top)

#v(2em)

另外 sentence:

Adapted from _Learn Chinese HSK4 Grammar 另 lìng & 另外 lìngwài_ by 
Sisi Laoshi 思思老师. July 18, 2023. 6m20s. https://www.youtube.com/watch?v=XvHFz0VZN7A 
*/