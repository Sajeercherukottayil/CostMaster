import '../../models/question.dart';

const lawDescriptive = [
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text:
        'What are the essential elements of a valid contract under the '
        'Indian Contract Act, 1872?',
    marks: 5,
    answer:
        'Under Section 10, all agreements are contracts if they are made '
        'by the free consent of parties competent to contract, for a lawful '
        'consideration and with a lawful object, and are not expressly '
        'declared void. The essential elements are:\n'
        '• Offer and acceptance: a lawful offer by one party and its lawful '
        'acceptance by the other.\n'
        '• Intention to create legal relations: social or domestic '
        'arrangements are generally not contracts.\n'
        '• Lawful consideration: each party must give something in return.\n'
        '• Capacity: parties must be of the age of majority, of sound mind '
        'and not disqualified by law.\n'
        '• Free consent: consent must not be caused by coercion, undue '
        'influence, fraud, misrepresentation or mistake.\n'
        '• Lawful object: the purpose must not be illegal, immoral or '
        'opposed to public policy.\n'
        '• Not expressly declared void, and the terms must be certain and '
        'possible to perform.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text: 'Distinguish between a void agreement and a voidable contract.',
    marks: 4,
    answer:
        '• Meaning: a void agreement is not enforceable by law at all '
        '(Section 2(g)); a voidable contract is enforceable at the option of '
        'one party but not the other (Section 2(i)).\n'
        '• Validity: a void agreement is void from the start; a voidable '
        'contract is valid until the aggrieved party rejects it.\n'
        '• Cause: a void agreement usually lacks an essential element, such '
        'as lawful object or consideration; a voidable contract arises when '
        'consent is not free, for example due to coercion or fraud.\n'
        '• Rights: under a void agreement, neither party can sue; under a '
        'voidable contract, the aggrieved party may rescind it or affirm it.\n'
        '• Third parties: a void agreement gives no rights to third parties; '
        'a third party who acquires goods in good faith under a voidable '
        'contract before it is rescinded may get good title.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text: 'Distinguish between a sale and an agreement to sell.',
    marks: 4,
    answer:
        'Both are covered by Section 4 of the Sale of Goods Act, 1930.\n'
        '• Ownership: in a sale, ownership passes to the buyer at once; in an '
        'agreement to sell, it passes at a future time or when a condition '
        'is met.\n'
        '• Nature: a sale is an executed contract; an agreement to sell is '
        'an executory contract.\n'
        '• Risk: risk generally follows ownership, so it is with the buyer '
        'after a sale and with the seller under an agreement to sell.\n'
        '• Remedy on breach: after a sale, the seller can sue for the price; '
        'under an agreement to sell, the seller can usually sue only for '
        'damages.\n'
        '• An agreement to sell becomes a sale when the time passes or the '
        'condition is fulfilled.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text: 'Explain the doctrine of caveat emptor and its exceptions.',
    marks: 5,
    answer:
        'Caveat emptor means "let the buyer beware". Under Section 16, '
        'there is generally no implied condition about the quality or '
        'fitness of goods for a particular purpose, so the buyer must check '
        'the goods before buying.\n'
        'Exceptions, where the seller is responsible:\n'
        '• Fitness for purpose: the buyer tells the seller the purpose, '
        'relies on the seller\'s skill, and the seller deals in such goods.\n'
        '• Merchantable quality: goods bought by description from a seller '
        'who deals in them must be of merchantable quality.\n'
        '• Usage of trade: a condition about quality may be implied by trade '
        'custom.\n'
        '• Sale by description or sample: goods must match the description '
        'or sample (Sections 15 and 17).\n'
        '• Fraud: the rule does not protect a seller who hides defects or '
        'misleads the buyer.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text: 'Define a promissory note and state its essential features.',
    marks: 5,
    answer:
        'Under Section 4, a promissory note is an instrument in writing '
        '(not a bank note or currency note) containing an unconditional '
        'undertaking, signed by the maker, to pay a certain sum of money '
        'only to, or to the order of, a certain person, or to the bearer of '
        'the instrument.\n'
        'Essential features:\n'
        '• It must be in writing; an oral promise is not enough.\n'
        '• It must contain a clear promise to pay, not just an '
        'acknowledgement of debt.\n'
        '• The promise must be unconditional.\n'
        '• It must be signed by the maker.\n'
        '• The maker and the payee must be certain.\n'
        '• The amount must be certain, and payable in money only.\n'
        '• It must be stamped as required by the Indian Stamp Act.\n'
        'Note: under Section 31 of the RBI Act, 1934, no one other than the '
        'RBI or the Central Government may issue a promissory note payable '
        'to bearer on demand.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text: 'Distinguish between a bill of exchange and a cheque.',
    marks: 4,
    answer:
        '• Drawee: a bill can be drawn on any person, including a bank; a '
        'cheque is always drawn on a specified banker.\n'
        '• Payment: a bill may be payable on demand or after a period; a '
        'cheque is always payable on demand.\n'
        '• Acceptance: a bill payable after a period must be accepted by the '
        'drawee; a cheque needs no acceptance.\n'
        '• Days of grace: three days of grace are allowed on a time bill; '
        'none on a cheque.\n'
        '• Crossing: a cheque can be crossed; a bill cannot.\n'
        '• Stamp: a bill needs a stamp; a cheque does not.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'Explain the 7 Cs of effective business communication.',
    marks: 5,
    answer:
        '• Clear: the purpose and message are easy to understand.\n'
        '• Concise: say what is needed in as few words as possible, without '
        'repetition.\n'
        '• Concrete: use specific facts and figures rather than vague '
        'statements.\n'
        '• Correct: facts, figures, grammar and spelling are accurate.\n'
        '• Coherent: ideas are logically connected and follow in order.\n'
        '• Complete: the receiver has all the information needed to act.\n'
        '• Courteous: the tone is polite and respects the receiver.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'What are the common barriers to effective communication?',
    marks: 5,
    answer:
        '• Semantic barriers: words with more than one meaning, jargon, '
        'or poor translation.\n'
        '• Physical barriers: noise, distance, poor network or faulty '
        'equipment.\n'
        '• Psychological barriers: lack of attention, prejudice, emotions '
        'such as anger or fear, and distrust.\n'
        '• Organisational barriers: too many levels of hierarchy, rigid '
        'rules, and information overload.\n'
        '• Cultural barriers: different customs, values and body language.\n'
        'They can be reduced by using simple language, choosing the right '
        'channel, listening actively and asking for feedback.',
  ),
];
