import '../../../models/question.dart';

const lawMoreQuestions = [
  // Indian Contract Act, 1872
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'Under Section 27, an agreement in restraint of trade is:',
    options: [
      'Valid',
      'Voidable at the option of either party',
      'Void, except in cases such as sale of goodwill',
      'Illegal and punishable',
    ],
    answerIndex: 2,
    explanation:
        'Section 27 makes every agreement that restrains anyone from a '
        'lawful profession, trade or business void. The exception is a '
        'seller of goodwill agreeing not to carry on a similar business '
        'within reasonable local limits.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text:
        'A person to whom money has been paid by mistake must repay it '
        'under:',
    options: ['Section 72', 'Section 10', 'Section 25', 'Section 56'],
    answerIndex: 0,
    explanation:
        'Section 72 is a quasi-contract: a person who receives money '
        'or goods by mistake or under coercion must repay or return them.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text:
        'A contract that becomes impossible to perform after it is made, '
        'because of an event the promisor could not prevent, becomes:',
    options: ['Voidable', 'Void', 'Illegal', 'Unenforceable only by one side'],
    answerIndex: 1,
    explanation:
        'Under Section 56 (doctrine of frustration), a contract to do '
        'an act that later becomes impossible or unlawful becomes void.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text:
        'Substituting a new contract for an existing one, with the consent '
        'of the parties, is called:',
    options: ['Rescission', 'Alteration', 'Novation', 'Remission'],
    answerIndex: 2,
    explanation:
        'Novation (Section 62) replaces the original contract with a '
        'new one, between the same or different parties. The original '
        'contract need not then be performed.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'Under the Indian Contract Act, 1872, past consideration is:',
    options: [
      'Not valid',
      'Valid',
      'Valid only if in writing',
      'Valid only between relatives',
    ],
    answerIndex: 1,
    explanation:
        'Section 2(d) recognises consideration that "has done", '
        '"does" or "promises to do", so past, present and future '
        'consideration are all valid in India.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text:
        'Fraud is defined in which section of the Indian Contract Act, '
        '1872?',
    options: ['Section 14', 'Section 17', 'Section 18', 'Section 20'],
    answerIndex: 1,
    explanation:
        'Section 17 defines fraud. Section 14 defines free consent, '
        'Section 18 misrepresentation, and Section 20 mistake of fact.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text:
        'Where one party is in a position to dominate the will of the '
        'other and uses it to get an unfair advantage, consent is obtained '
        'by:',
    options: ['Coercion', 'Misrepresentation', 'Mistake', 'Undue influence'],
    answerIndex: 3,
    explanation:
        'This is undue influence under Section 16, for example a '
        'doctor and patient or a guardian and ward. Such a contract is '
        'voidable at the option of the party influenced.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text:
        'When a contract names a sum to be paid on breach, the court under '
        'Section 74 awards:',
    options: [
      'Always the full sum named',
      'Nothing, as penalties are void',
      'Reasonable compensation not exceeding the sum named',
      'Double the sum named',
    ],
    answerIndex: 2,
    explanation:
        'Section 74 allows reasonable compensation up to the amount '
        'named, whether the sum is called liquidated damages or a penalty. '
        'Actual loss need not be proved.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text:
        'A contract to do something only if an uncertain event collateral '
        'to the contract happens is a:',
    options: [
      'Quasi-contract',
      'Contingent contract',
      'Wagering agreement',
      'Void agreement',
    ],
    answerIndex: 1,
    explanation:
        'Section 31 defines a contingent contract, such as a contract '
        'of insurance. It can be enforced only when the event happens.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text:
        'If a party refuses to perform before the due date of performance, '
        'the other party may:',
    options: [
      'Only wait until the due date',
      'Treat the contract as ended and sue for damages at once',
      'Sue only for specific performance',
      'Take no action, as there is no breach yet',
    ],
    answerIndex: 1,
    explanation:
        'This is anticipatory breach (Section 39). The aggrieved party '
        'may put an end to the contract and claim damages immediately, or '
        'wait for the due date.',
  ),

  // Sale of Goods Act, 1930
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text:
        'Which of the following is an implied warranty under the Sale of '
        'Goods Act, 1930?',
    options: [
      'Condition as to title',
      'Quiet possession of the goods',
      'Correspondence with sample',
      'Merchantable quality',
    ],
    answerIndex: 1,
    explanation:
        'Section 14 implies warranties of quiet possession and freedom '
        'from encumbrances. Title, sample and merchantable quality are '
        'implied conditions.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text:
        'An unpaid seller\'s right of stoppage in transit arises when the '
        'buyer:',
    options: [
      'Refuses delivery',
      'Becomes insolvent',
      'Asks for a discount',
      'Resells the goods',
    ],
    answerIndex: 1,
    explanation:
        'Under Section 50, the unpaid seller may stop goods in '
        'transit and resume possession when the buyer becomes insolvent.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text:
        'Handing over the key of a warehouse in which goods are stored is '
        'an example of:',
    options: [
      'Actual delivery',
      'Symbolic delivery',
      'Constructive delivery',
      'No delivery',
    ],
    answerIndex: 1,
    explanation:
        'Symbolic delivery gives the buyer the means of getting '
        'possession, such as a key, rather than the goods themselves.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text:
        'Goods to be manufactured or acquired by the seller after the '
        'contract is made are:',
    options: [
      'Existing goods',
      'Specific goods',
      'Future goods',
      'Ascertained goods',
    ],
    answerIndex: 2,
    explanation:
        'Section 2(6) defines future goods. A contract for future '
        'goods can only be an agreement to sell, not a sale.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text:
        'Unless otherwise agreed, the risk of loss of goods passes to the '
        'buyer:',
    options: [
      'When the price is paid',
      'When the goods are delivered',
      'When the property in the goods passes',
      'When the contract is signed, in all cases',
    ],
    answerIndex: 2,
    explanation:
        'Section 26 states that risk prima facie passes with property, '
        'whether or not delivery has been made.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text:
        'A breach of condition may be treated as a breach of warranty '
        'when:',
    options: [
      'The seller asks for it',
      'The buyer waives the condition or elects to treat it so',
      'The goods are perishable',
      'The price is below ₹1,000',
    ],
    answerIndex: 1,
    explanation:
        'Under Section 13, the buyer may waive the condition or treat '
        'the breach as a breach of warranty, claiming damages instead of '
        'rejecting the goods.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text:
        'In a contract for the sale of unascertained goods, property passes '
        'to the buyer:',
    options: [
      'When the contract is made',
      'Only when the goods are ascertained',
      'When half the price is paid',
      'Never',
    ],
    answerIndex: 1,
    explanation:
        'Section 18 provides that no property passes in unascertained '
        'goods until they are ascertained.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text: 'In a sale by sample, there is an implied condition that:',
    options: [
      'The bulk corresponds with the sample in quality',
      'The price is fixed by the buyer',
      'The goods are delivered within a week',
      'The seller gives a written warranty',
    ],
    answerIndex: 0,
    explanation:
        'Section 17 implies that the bulk will match the sample, the '
        'buyer can compare them, and the goods are free from hidden '
        'defects not visible on reasonable examination of the sample.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text:
        'An unpaid seller may resell the goods without notice to the buyer '
        'when the goods are:',
    options: ['Imported', 'Perishable', 'Expensive', 'Unascertained'],
    answerIndex: 1,
    explanation:
        'Under Section 54, resale is allowed where the goods are '
        'perishable, or where the seller gives notice and the buyer does not '
        'pay within a reasonable time.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text: 'The unpaid seller\'s lien is lost when:',
    options: [
      'The buyer becomes insolvent',
      'The buyer or his agent lawfully obtains possession of the goods',
      'The price is due',
      'The seller keeps the goods as bailee',
    ],
    answerIndex: 1,
    explanation:
        'Under Section 49, lien ends when the goods are delivered to a '
        'carrier without reserving the right of disposal, when the buyer '
        'lawfully obtains possession, or when the seller waives it.',
  ),

  // Negotiable Instruments Act, 1881
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text:
        'A "holder in due course" is defined in which section of the '
        'Negotiable Instruments Act, 1881?',
    options: ['Section 5', 'Section 6', 'Section 9', 'Section 13'],
    answerIndex: 2,
    explanation:
        'Section 9 defines a holder in due course. Sections 5 and 6 '
        'define bills and cheques, and Section 13 negotiable instruments.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text:
        'A bill payable "three months after date" is entitled to days of '
        'grace of:',
    options: ['None', 'One day', 'Three days', 'Seven days'],
    answerIndex: 2,
    explanation:
        'Under Section 22, three days of grace are added to the due '
        'date of an instrument payable otherwise than on demand.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text:
        'An endorsement that names no endorsee and consists only of the '
        'endorser\'s signature is:',
    options: [
      'A special endorsement',
      'A restrictive endorsement',
      'A blank endorsement',
      'A conditional endorsement',
    ],
    answerIndex: 2,
    explanation:
        'A blank (general) endorsement makes the instrument payable '
        'to bearer, so it can then be negotiated by delivery.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text:
        'A signed and stamped instrument, left wholly or partly blank and '
        'handed over to be completed, is an:',
    options: [
      'Ambiguous instrument',
      'Inchoate instrument',
      'Escrow',
      'Accommodation bill',
    ],
    answerIndex: 1,
    explanation:
        'Under Section 20, the holder of an inchoate stamped '
        'instrument may complete it for any amount the stamp covers, and '
        'the signer is liable to a holder in due course.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text:
        'After a cheque is dishonoured, the payee must send a written '
        'demand to the drawer under Section 138 within:',
    options: ['7 days', '15 days', '30 days', '3 months'],
    answerIndex: 2,
    explanation:
        'The notice must be given within 30 days of receiving '
        'information of dishonour. The drawer then has 15 days to pay.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text:
        'The maximum imprisonment for dishonour of a cheque under Section '
        '138 is:',
    options: ['6 months', '1 year', '2 years', '7 years'],
    answerIndex: 2,
    explanation:
        'Section 138 provides imprisonment up to 2 years, or a fine up '
        'to twice the cheque amount, or both.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text:
        'A cheque crossed with the name of a particular bank can be paid '
        'only:',
    options: [
      'In cash at the counter',
      'To that named bank',
      'To any bank',
      'To the drawer',
    ],
    answerIndex: 1,
    explanation:
        'This is a special crossing (Section 124). The paying banker '
        'must pay only to the banker named in the crossing.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text: 'A crossing marked "Not Negotiable" means that:',
    options: [
      'The cheque cannot be transferred at all',
      'The cheque can be paid only in cash',
      'A transferee gets no better title than the transferor had',
      'The cheque becomes a bearer cheque',
    ],
    answerIndex: 2,
    explanation:
        'Under Section 130, a "not negotiable" cheque can still be '
        'transferred, but the transferee cannot get a better title than '
        'the person who transferred it.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text:
        'A certificate by a notary public attesting the dishonour of a bill '
        'is called:',
    options: ['Noting', 'Protest', 'Acceptance', 'Endorsement'],
    answerIndex: 1,
    explanation:
        'Noting is the notary\'s record of dishonour on the bill. A '
        'protest (Section 100) is the formal certificate based on it.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text:
        'The person who makes a promise to pay in a promissory note is '
        'called the:',
    options: ['Drawer', 'Drawee', 'Payee', 'Maker'],
    answerIndex: 3,
    explanation:
        'The maker signs the promissory note and promises to pay the '
        'payee. Drawer and drawee are parties to a bill or cheque.',
  ),

  // Business Communication
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'Downward communication flows:',
    options: [
      'From subordinates to superiors',
      'Between colleagues at the same level',
      'From superiors to subordinates',
      'From customers to the organisation',
    ],
    answerIndex: 2,
    explanation:
        'Downward communication carries instructions, policies and '
        'feedback from higher levels to lower levels.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'Interpreting a message to understand its meaning is called:',
    options: ['Encoding', 'Decoding', 'Transmission', 'Noise'],
    answerIndex: 1,
    explanation:
        'The receiver decodes the message. Encoding is done by the '
        'sender.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text:
        'The written record of the proceedings and decisions of a meeting '
        'is called:',
    options: ['Agenda', 'Minutes', 'Notice', 'Memo'],
    answerIndex: 1,
    explanation:
        'Minutes record what was discussed and decided. The agenda is '
        'the list of items to be discussed, sent before the meeting.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text:
        'A list of items to be discussed at a meeting, sent in advance, is '
        'the:',
    options: ['Agenda', 'Minutes', 'Resolution', 'Proxy'],
    answerIndex: 0,
    explanation:
        'The agenda helps members prepare and keeps the meeting '
        'focused.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text:
        'Communication between people in different departments and at '
        'different levels is:',
    options: [
      'Upward communication',
      'Downward communication',
      'Horizontal communication',
      'Diagonal communication',
    ],
    answerIndex: 3,
    explanation:
        'Diagonal (cross-wise) communication cuts across both '
        'departments and levels, such as a sales executive writing to the '
        'production manager.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'Tone, pitch and speed of voice are part of:',
    options: ['Paralanguage', 'Written communication', 'Jargon', 'Grapevine'],
    answerIndex: 0,
    explanation:
        'Paralanguage is how something is said, as opposed to the '
        'words themselves. It is a form of non-verbal communication.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'In email, the "Bcc" field is used to:',
    options: [
      'Send a copy that all recipients can see',
      'Send a copy without other recipients seeing that address',
      'Mark the email as urgent',
      'Attach a file',
    ],
    answerIndex: 1,
    explanation:
        'Bcc (blind carbon copy) hides those addresses from the other '
        'recipients. It is useful for large mailing lists.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'Active listening mainly involves:',
    options: [
      'Interrupting to give your view quickly',
      'Full attention, understanding and giving feedback',
      'Listening only to the main points',
      'Preparing your reply while the speaker talks',
    ],
    answerIndex: 1,
    explanation:
        'An active listener pays full attention, avoids interrupting, '
        'asks questions and summarises to check understanding.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'A business report should be:',
    options: [
      'Emotional and persuasive',
      'Objective, factual and well organised',
      'As long as possible',
      'Written in casual language',
    ],
    answerIndex: 1,
    explanation:
        'Reports help decision-making, so they present facts and '
        'findings objectively, under clear headings, with conclusions and '
        'recommendations.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text:
        'The phrase "Dear Sir or Madam" at the start of a business letter '
        'is the:',
    options: ['Subject line', 'Salutation', 'Complimentary close', 'Reference'],
    answerIndex: 1,
    explanation:
        'The salutation greets the reader. The complimentary close, '
        'such as "Yours faithfully", ends the letter.',
  ),
];
