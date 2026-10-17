import '../../models/question.dart';

const lawQuestions = [
  // Indian Contract Act, 1872
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'As per Section 2(h) of the Indian Contract Act, 1872, an agreement '
        'enforceable by law is a:',
    options: ['Promise', 'Contract', 'Proposal', 'Consideration'],
    answerIndex: 1,
    explanation: 'Section 2(h) defines a contract as an agreement enforceable by '
        'law. Every contract is an agreement, but not every agreement is a contract.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'An offer made to the public at large, which anyone can accept by '
        'performing its conditions, is a:',
    options: ['Specific offer', 'Cross offer', 'General offer', 'Counter offer'],
    answerIndex: 2,
    explanation: 'A general offer is made to the world at large, as in Carlill v. '
        'Carbolic Smoke Ball Co., and is accepted by performing the conditions.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'The communication of a proposal is complete when:',
    options: [
      'The proposal is posted',
      'It comes to the knowledge of the person to whom it is made',
      'The proposer signs it',
      'The acceptance is posted',
    ],
    answerIndex: 1,
    explanation: 'Under Section 4, communication of a proposal is complete when it '
        'comes to the knowledge of the person to whom it is made.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'Under the Indian Contract Act, 1872, consideration may move from:',
    options: [
      'The promisee only',
      'The promisor only',
      'A government authority only',
      'The promisee or any other person',
    ],
    answerIndex: 3,
    explanation: 'Section 2(d) says consideration may be given "by the promisee or '
        'any other person", so it need not move from the promisee alone.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'An agreement without consideration is still valid when it is:',
    options: [
      'Made orally between friends',
      'In writing, registered, and made out of natural love and affection '
          'between near relatives',
      'Made with a minor',
      'In restraint of trade',
    ],
    answerIndex: 1,
    explanation: 'Section 25 lists exceptions to "no consideration, no contract"; '
        'a registered written agreement out of natural love and affection '
        'between near relatives is one of them.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'An agreement with a minor is:',
    options: ['Valid', 'Voidable at the option of the minor', 'Void ab initio', 'Illegal'],
    answerIndex: 2,
    explanation: 'Following Mohori Bibee v. Dharmodas Ghose, an agreement with a '
        'minor is void from the beginning.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'A supplier provides necessaries suited to the condition in life of a '
        'minor. The supplier can recover the price:',
    options: [
      'From the minor personally',
      'From the property of the minor',
      'From the minor\'s parents personally',
      'Not at all',
    ],
    answerIndex: 1,
    explanation: 'Under Section 68 (a quasi-contract), the supplier is entitled to '
        'be reimbursed from the property of the incapable person, not from them personally.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'A contract in which consent was caused by coercion is:',
    options: [
      'Void',
      'Valid',
      'Illegal',
      'Voidable at the option of the party whose consent was so caused',
    ],
    answerIndex: 3,
    explanation: 'Under Section 19, an agreement where consent is caused by '
        'coercion, undue influence, fraud or misrepresentation is voidable at '
        'the option of the party whose consent was so caused.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'A wagering agreement is:',
    options: ['Valid', 'Voidable', 'Void', 'Enforceable if in writing'],
    answerIndex: 2,
    explanation: 'Section 30 declares agreements by way of wager void.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'Under Section 7 of the Indian Contract Act, 1872, acceptance of a '
        'proposal must be:',
    options: [
      'Conditional on later approval',
      'Made before the proposal is communicated',
      'Absolute and unqualified',
      'Always in writing',
    ],
    answerIndex: 2,
    explanation: 'Section 7 requires acceptance to be absolute and unqualified. A '
        'conditional acceptance is a counter-offer.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'A contract which ceases to be enforceable by law becomes:',
    options: [
      'A contingent contract',
      'A voidable contract',
      'A void contract',
      'An illegal agreement',
    ],
    answerIndex: 2,
    explanation: 'Section 2(j): a contract which ceases to be enforceable by law '
        'becomes void when it ceases to be enforceable.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'Under Section 73, compensation for breach of contract is NOT given '
        'for:',
    options: [
      'Loss arising directly from the breach',
      'Remote and indirect loss or damage',
      'Loss which naturally arose in the usual course of things',
      'Loss the parties knew, when contracting, to be likely',
    ],
    answerIndex: 1,
    explanation: 'Section 73 allows compensation for loss arising naturally from the '
        'breach or known to be likely, but not for remote and indirect '
        'loss.',
  ),

  // Sale of Goods Act, 1930
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text: 'Under the Sale of Goods Act, 1930, a breach of warranty entitles the '
        'buyer to:',
    options: [
      'Reject the goods and repudiate the contract',
      'Claim damages only',
      'Claim a refund of the full price',
      'Treat the contract as void',
    ],
    answerIndex: 1,
    explanation: 'A warranty is collateral to the main purpose, so its breach '
        'gives a claim for damages only. Breach of a condition allows repudiation.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text: 'The doctrine of "caveat emptor" means:',
    options: [
      'Let the seller beware',
      'Let the buyer beware',
      'The buyer is always right',
      'Goods are sold at the seller\'s risk',
    ],
    answerIndex: 1,
    explanation: 'Caveat emptor means "let the buyer beware": the buyer must '
        'examine the goods, subject to the exceptions given in the Act.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text: 'Under the Sale of Goods Act, 1930, a stipulation essential to the '
        'main purpose of the contract is a:',
    options: ['Warranty', 'Condition', 'Guarantee', 'Representation'],
    answerIndex: 1,
    explanation: 'A condition is essential to the main purpose; a warranty is '
        'collateral to it.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text: 'Under Section 2(7) of the Sale of Goods Act, 1930, "goods" does '
        'NOT include:',
    options: [
      'Actionable claims and money',
      'Growing crops',
      'Things attached to the earth agreed to be severed before sale',
      'Stocks and shares',
    ],
    answerIndex: 0,
    explanation: 'Goods means every kind of movable property other than actionable '
        'claims and money; stocks, shares and growing crops are included.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text: 'Where the transfer of property in goods is to take place at a '
        'future time, the contract is called:',
    options: [
      'A sale',
      'A hire purchase',
      'A bailment',
      'An agreement to sell',
    ],
    answerIndex: 3,
    explanation: 'Under Section 4, when property passes at a future time or on a '
        'condition, it is an agreement to sell; it becomes a sale when that '
        'time passes or the condition is fulfilled.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text: 'In a sale by description, there is an implied condition that the '
        'goods shall:',
    options: [
      'Be fit for every purpose',
      'Be returnable at any time',
      'Correspond with the description',
      'Be delivered free of cost',
    ],
    answerIndex: 2,
    explanation: 'Section 15: where goods are sold by description, there is an '
        'implied condition that they correspond with the description.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text: 'Under the Sale of Goods Act, 1930, "price" means:',
    options: [
      'The market value of the goods',
      'The seller\'s cost of the goods',
      'The money consideration for a sale of goods',
      'Any consideration, including other goods',
    ],
    answerIndex: 2,
    explanation: 'Section 2(10) defines price as the money consideration; an '
        'exchange of goods for goods is a barter.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text: 'An exchange of goods for other goods, without any money, is:',
    options: [
      'A barter, not a sale',
      'A sale',
      'A hire purchase',
      'An agreement to sell',
    ],
    answerIndex: 0,
    explanation: 'A sale requires a money price, so a pure exchange of goods is a '
        'barter.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text: 'Under section 16(1), a condition that goods are fit for a '
        'particular purpose is implied when the buyer:',
    options: [
      'Buys under a trade name',
      'Pays in advance',
      'Makes the purpose known and relies on the seller\'s skill or judgement',
      'Examines the goods fully',
    ],
    answerIndex: 2,
    explanation: 'The condition applies when the purpose is made known and the goods '
        'are of a kind the seller deals in.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text: 'In a sale by auction, the sale is complete when:',
    options: [
      'The auctioneer announces its completion by the fall of the hammer',
      'The price is paid',
      'The goods are delivered',
      'The bid is made',
    ],
    answerIndex: 0,
    explanation: 'Section 64(2): until the hammer falls, a bidder may retract the '
        'bid.',
  ),

  // Negotiable Instruments Act, 1881
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text: 'Which of the following is NOT a negotiable instrument under Section 13 '
        'of the Negotiable Instruments Act, 1881?',
    options: ['Promissory note', 'Bill of exchange', 'Cheque', 'Money order'],
    answerIndex: 3,
    explanation: 'Section 13 names promissory notes, bills of exchange and '
        'cheques. A money order is not a negotiable instrument.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text: 'A cheque is a bill of exchange drawn on a specified banker and payable:',
    options: ['On demand', 'After three days of grace', 'After 30 days', 'On a fixed future date'],
    answerIndex: 0,
    explanation: 'Section 6 defines a cheque as a bill of exchange drawn on a '
        'specified banker and not expressed to be payable otherwise than on demand.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text: 'In a bill of exchange, the person directed to pay is the:',
    options: ['Drawer', 'Payee', 'Drawee', 'Endorser'],
    answerIndex: 2,
    explanation: 'The drawer makes the bill, the drawee is directed to pay, and '
        'the payee receives the money.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text: 'Under Section 4 of the Negotiable Instruments Act, a promissory '
        'note must:',
    options: [
      'Be drawn on a specified banker',
      'Contain an order to pay',
      'Be accepted by the drawee',
      'Contain an unconditional undertaking, signed by the maker, to pay a certain sum',
    ],
    answerIndex: 3,
    explanation: 'A promissory note is a written, unconditional undertaking signed '
        'by the maker to pay a certain sum of money. An order to pay is a '
        'feature of a bill of exchange.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text: 'A cheque crossed generally (two parallel transverse lines) can be '
        'paid:',
    options: [
      'Only in cash over the counter',
      'Only after 30 days',
      'Only through a bank',
      'Only to the drawer personally',
    ],
    answerIndex: 2,
    explanation: 'A crossed cheque cannot be encashed over the counter; the amount '
        'must be collected through a bank.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text: 'A cheque presented for payment after the expiry of its validity '
        'period (three months from its date) is called a:',
    options: [
      'Mutilated cheque',
      'Stale cheque',
      'Bearer cheque',
      'Post-dated cheque',
    ],
    answerIndex: 1,
    explanation: 'Banks do not pay a cheque presented after its validity period; '
        'such a cheque is called stale.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text: 'An instrument payable "at sight" is payable:',
    options: [
      'After one month',
      'On demand',
      'After 3 days of grace',
      'Only on its due date',
    ],
    answerIndex: 1,
    explanation: 'Under section 21, "at sight" and "on presentment" mean on demand.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text: 'A cheque bearing a date later than the date on which it is issued '
        'is a:',
    options: [
      'Stale cheque',
      'Crossed cheque',
      'Post-dated cheque',
      'Ante-dated cheque',
    ],
    answerIndex: 2,
    explanation: 'A post-dated cheque can be paid only on or after the date written '
        'on it.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text: 'A cheque crossed with the words "Account Payee" means that the '
        'amount:',
    options: [
      'Can be paid to any endorsee',
      'Can be paid in cash to anyone',
      'Is payable only after 30 days',
      'Should be credited only to the payee\'s account',
    ],
    answerIndex: 3,
    explanation: 'An account payee crossing directs the collecting bank to credit '
        'the proceeds only to the payee\'s account.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text: 'A negotiable instrument payable to order is negotiated by:',
    options: [
      'A registered transfer deed',
      'An order of the court',
      'Endorsement and delivery',
      'Delivery alone',
    ],
    answerIndex: 2,
    explanation: 'A bearer instrument is negotiated by mere delivery; an order '
        'instrument needs endorsement and delivery.',
  ),

  // Business Communication
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'Which of the following is NOT one of the 7 Cs of effective communication?',
    options: ['Clarity', 'Conciseness', 'Courtesy', 'Complexity'],
    answerIndex: 3,
    explanation: 'The 7 Cs are Clarity, Conciseness, Concreteness, Correctness, '
        'Coherence, Completeness and Courtesy. Complexity hinders communication.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'The informal channel of communication in an organisation is known as:',
    options: ['Grapevine', 'Chain of command', 'Upward communication', 'Circular'],
    answerIndex: 0,
    explanation: 'The grapevine is the informal network through which information '
        'spreads, outside the formal chain of command.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'Communication from a subordinate to a superior is called:',
    options: [
      'Downward communication',
      'Horizontal communication',
      'Upward communication',
      'Diagonal communication',
    ],
    answerIndex: 2,
    explanation: 'Upward communication flows from lower to higher levels, for '
        'example reports, suggestions and grievances.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'In the communication process, feedback is:',
    options: [
      'The channel used to send the message',
      'The receiver\'s response to the sender\'s message',
      'Any disturbance that distorts the message',
      'Converting ideas into symbols',
    ],
    answerIndex: 1,
    explanation: 'Feedback is the receiver\'s response; it tells the sender '
        'whether the message was understood. Disturbance is noise, and '
        'converting ideas into symbols is encoding.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: '"Noise" in the communication process means:',
    options: [
      'The receiver\'s reply',
      'The medium chosen',
      'Any disturbance that distorts or interrupts the message',
      'The sender of the message',
    ],
    answerIndex: 2,
    explanation: 'Noise is any barrier, physical or psychological, that interferes '
        'with the correct transmission or understanding of a message.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'A memorandum (memo) is mainly used for:',
    options: [
      'Internal communication within an organisation',
      'Communicating with the government',
      'Filing a case in court',
      'Advertising to customers',
    ],
    answerIndex: 0,
    explanation: 'A memo is a short, informal written message used for communication '
        'between departments or employees of the same organisation.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'Communication between employees at the same level in an '
        'organisation is:',
    options: [
      'Downward communication',
      'Diagonal communication',
      'Upward communication',
      'Horizontal (lateral) communication',
    ],
    answerIndex: 3,
    explanation: 'Horizontal or lateral communication takes place between people at '
        'the same level, for example between department heads.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'Which of the following is an example of non-verbal communication?',
    options: [
      'A face-to-face speech',
      'Body language',
      'A telephone call',
      'A business letter',
    ],
    answerIndex: 1,
    explanation: 'Gestures, facial expressions and posture communicate without '
        'words.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'The sender\'s act of converting an idea into words, symbols or '
        'gestures is called:',
    options: ['Encoding', 'Decoding', 'Feedback', 'Noise'],
    answerIndex: 0,
    explanation: 'The receiver decodes the message, that is, interprets its meaning.',
  ),
  Question(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'A circular is mainly used to:',
    options: [
      'Communicate the same information to a large number of people',
      'Record minutes of a meeting',
      'Reply to a single customer complaint',
      'Apply for a job',
    ],
    answerIndex: 0,
    explanation: 'Circulars carry identical messages to many recipients, for example '
        'a change of office address.',
  ),
];
