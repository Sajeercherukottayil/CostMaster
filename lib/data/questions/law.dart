import '../../models/question.dart';

const lawQuestions = [
  // Indian Contract Act, 1872
  Question(
    subjectId: 'law',
    text: 'As per Section 2(h) of the Indian Contract Act, 1872, an agreement '
        'enforceable by law is a:',
    options: ['Promise', 'Contract', 'Proposal', 'Consideration'],
    answerIndex: 1,
    explanation: 'Section 2(h) defines a contract as an agreement enforceable by '
        'law. Every contract is an agreement, but not every agreement is a contract.',
  ),
  Question(
    subjectId: 'law',
    text: 'An offer made to the public at large, which anyone can accept by '
        'performing its conditions, is a:',
    options: ['Specific offer', 'Cross offer', 'General offer', 'Counter offer'],
    answerIndex: 2,
    explanation: 'A general offer is made to the world at large, as in Carlill v. '
        'Carbolic Smoke Ball Co., and is accepted by performing the conditions.',
  ),
  Question(
    subjectId: 'law',
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
    text: 'An agreement with a minor is:',
    options: ['Valid', 'Voidable at the option of the minor', 'Void ab initio', 'Illegal'],
    answerIndex: 2,
    explanation: 'Following Mohori Bibee v. Dharmodas Ghose, an agreement with a '
        'minor is void from the beginning.',
  ),
  Question(
    subjectId: 'law',
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
    text: 'A wagering agreement is:',
    options: ['Valid', 'Voidable', 'Void', 'Enforceable if in writing'],
    answerIndex: 2,
    explanation: 'Section 30 declares agreements by way of wager void.',
  ),

  // Sale of Goods Act, 1930
  Question(
    subjectId: 'law',
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
    text: 'Under the Sale of Goods Act, 1930, a stipulation essential to the '
        'main purpose of the contract is a:',
    options: ['Warranty', 'Condition', 'Guarantee', 'Representation'],
    answerIndex: 1,
    explanation: 'A condition is essential to the main purpose; a warranty is '
        'collateral to it.',
  ),

  // Negotiable Instruments Act, 1881
  Question(
    subjectId: 'law',
    text: 'Which of the following is NOT a negotiable instrument under Section 13 '
        'of the Negotiable Instruments Act, 1881?',
    options: ['Promissory note', 'Bill of exchange', 'Cheque', 'Money order'],
    answerIndex: 3,
    explanation: 'Section 13 names promissory notes, bills of exchange and '
        'cheques. A money order is not a negotiable instrument.',
  ),
  Question(
    subjectId: 'law',
    text: 'A cheque is a bill of exchange drawn on a specified banker and payable:',
    options: ['On demand', 'After three days of grace', 'After 30 days', 'On a fixed future date'],
    answerIndex: 0,
    explanation: 'Section 6 defines a cheque as a bill of exchange drawn on a '
        'specified banker and not expressed to be payable otherwise than on demand.',
  ),
  Question(
    subjectId: 'law',
    text: 'In a bill of exchange, the person directed to pay is the:',
    options: ['Drawer', 'Payee', 'Drawee', 'Endorser'],
    answerIndex: 2,
    explanation: 'The drawer makes the bill, the drawee is directed to pay, and '
        'the payee receives the money.',
  ),

  // Business Communication
  Question(
    subjectId: 'law',
    text: 'Which of the following is NOT one of the 7 Cs of effective communication?',
    options: ['Clarity', 'Conciseness', 'Courtesy', 'Complexity'],
    answerIndex: 3,
    explanation: 'The 7 Cs are Clarity, Conciseness, Concreteness, Correctness, '
        'Coherence, Completeness and Courtesy. Complexity hinders communication.',
  ),
  Question(
    subjectId: 'law',
    text: 'The informal channel of communication in an organisation is known as:',
    options: ['Grapevine', 'Chain of command', 'Upward communication', 'Circular'],
    answerIndex: 0,
    explanation: 'The grapevine is the informal network through which information '
        'spreads, outside the formal chain of command.',
  ),
  Question(
    subjectId: 'law',
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
];
