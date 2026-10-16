import '../../../models/question.dart';

const interLawQuestions = [
  // Special contracts
  Question(
    subjectId: 'i_law',
    text: 'A contract by which one party promises to save the other from loss '
        'caused by the conduct of the promisor or of any other person is a '
        'contract of:',
    options: ['Guarantee', 'Indemnity', 'Bailment', 'Agency'],
    answerIndex: 1,
    explanation: 'Section 124 of the Indian Contract Act, 1872 defines a contract '
        'of indemnity. A guarantee (Section 126) is a promise to discharge the '
        'liability of a third person on default.',
  ),
  Question(
    subjectId: 'i_law',
    text: 'In a contract of guarantee, the person who gives the guarantee is the:',
    options: ['Principal debtor', 'Creditor', 'Surety', 'Indemnifier'],
    answerIndex: 2,
    explanation: 'A guarantee has three parties: the surety (who gives the '
        'guarantee), the principal debtor and the creditor.',
  ),
  Question(
    subjectId: 'i_law',
    text: 'Unless the contract provides otherwise, the liability of a surety is:',
    options: [
      'Secondary and arises only after the creditor sues the principal debtor',
      'Limited to half of the debt',
      'Co-extensive with that of the principal debtor',
      'Unlimited, beyond the principal debtor\'s liability',
    ],
    answerIndex: 2,
    explanation: 'Under Section 128 the surety\'s liability is co-extensive with '
        'that of the principal debtor, and the creditor may proceed against the '
        'surety directly.',
  ),
  Question(
    subjectId: 'i_law',
    text: 'The bailment of goods as security for payment of a debt or '
        'performance of a promise is called:',
    options: ['Pledge', 'Mortgage', 'Hypothecation', 'Lien'],
    answerIndex: 0,
    explanation: 'Section 172 defines pledge. The bailor is the pawnor and the '
        'bailee is the pawnee.',
  ),
  Question(
    subjectId: 'i_law',
    text: 'Bailment under the Indian Contract Act, 1872 can be made of:',
    options: [
      'Movable goods only',
      'Immovable property only',
      'Both movable and immovable property',
      'Money only',
    ],
    answerIndex: 0,
    explanation: 'Bailment (Section 148) is the delivery of goods for a purpose, '
        'to be returned when the purpose is accomplished. Only movable goods '
        'can be delivered in this way.',
  ),
  Question(
    subjectId: 'i_law',
    text: 'An agent who, for an extra commission, guarantees the principal that '
        'third parties will perform their contracts is a:',
    options: ['Sub-agent', 'Mercantile agent', 'Broker', 'Del credere agent'],
    answerIndex: 3,
    explanation: 'A del credere agent takes on the risk of the buyer\'s default '
        'in return for del credere commission.',
  ),

  // Sale of goods and negotiable instruments
  Question(
    subjectId: 'i_law',
    text: 'An unpaid seller\'s right of stoppage in transit is available when '
        'the buyer:',
    options: [
      'Refuses to take delivery',
      'Becomes insolvent',
      'Delays payment by a week',
      'Asks for a discount',
    ],
    answerIndex: 1,
    explanation: 'Under the Sale of Goods Act, 1930, the unpaid seller may stop '
        'goods in transit and resume possession when the buyer becomes insolvent.',
  ),
  Question(
    subjectId: 'i_law',
    text: 'A person who obtains a negotiable instrument for consideration, '
        'before maturity, in good faith and without notice of any defect in '
        'title is a:',
    options: ['Holder', 'Payee', 'Holder in due course', 'Drawee in case of need'],
    answerIndex: 2,
    explanation: 'This is a holder in due course under Section 9 of the '
        'Negotiable Instruments Act, 1881, who gets a better title than the '
        'transferor.',
  ),

  // Partnership, LLP and companies
  Question(
    subjectId: 'i_law',
    text: 'Under the Indian Partnership Act, 1932, registration of a partnership '
        'firm is:',
    options: [
      'Compulsory within 30 days of formation',
      'Optional, but an unregistered firm suffers certain disabilities',
      'Not permitted',
      'Compulsory only for firms with more than 10 partners',
    ],
    answerIndex: 1,
    explanation: 'Registration is not compulsory, but under Section 69 an '
        'unregistered firm cannot sue third parties to enforce contractual rights.',
  ),
  Question(
    subjectId: 'i_law',
    text: 'Under the LLP Act, 2008, every LLP must have at least:',
    options: [
      'One designated partner',
      'Seven designated partners',
      'Two designated partners, at least one of whom is resident in India',
      'Three designated partners, all resident in India',
    ],
    answerIndex: 2,
    explanation: 'An LLP needs at least two designated partners who are '
        'individuals, and at least one of them must be resident in India.',
  ),
  Question(
    subjectId: 'i_law',
    text: 'A company having only one person as its member is called a:',
    options: [
      'Small company',
      'Private company',
      'Sole proprietorship',
      'One Person Company',
    ],
    answerIndex: 3,
    explanation: 'Section 2(62) of the Companies Act, 2013 defines a One Person '
        'Company as a company with only one person as a member.',
  ),
  Question(
    subjectId: 'i_law',
    text: 'The minimum number of members required to form a public company is:',
    options: ['2', '5', '7', '15'],
    answerIndex: 2,
    explanation: 'Under Section 3 of the Companies Act, 2013, a public company '
        'needs at least seven members, a private company two, and an OPC one.',
  ),
  Question(
    subjectId: 'i_law',
    text: 'The maximum number of members of a private company (excluding '
        'present and former employee-members) is:',
    options: ['50', '100', '500', '200'],
    answerIndex: 3,
    explanation: 'Section 2(68) of the Companies Act, 2013 limits a private '
        'company to 200 members, excluding employee-members.',
  ),
  Question(
    subjectId: 'i_law',
    text: 'The doctrine of indoor management protects:',
    options: [
      'Outsiders dealing with the company in good faith',
      'Directors of the company',
      'Shareholders against outsiders',
      'The company against its own officers',
    ],
    answerIndex: 0,
    explanation: 'From Royal British Bank v. Turquand: outsiders may assume that '
        'internal procedures have been complied with. It limits the doctrine '
        'of constructive notice.',
  ),

  // Ethics
  Question(
    subjectId: 'i_law',
    text: 'The word "ethics" is derived from the Greek word "ethos", which means:',
    options: ['Law', 'Character or custom', 'Profit', 'Religion'],
    answerIndex: 1,
    explanation: 'Ethos means character, custom or habit. Ethics deals with '
        'standards of right and wrong conduct.',
  ),
  Question(
    subjectId: 'i_law',
    text: 'An employee reporting fraud or unethical practices within the '
        'organisation to authorities is known as:',
    options: ['Insider trading', 'Lobbying', 'Whistle-blowing', 'Moonlighting'],
    answerIndex: 2,
    explanation: 'Whistle-blowing is disclosing wrongdoing, either internally or '
        'to outside authorities. Companies set up vigil mechanisms to support it.',
  ),
];
