import '../../../models/question.dart';

const interLawQuestions = [
  // Special contracts
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
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
    chapter: 'Special Contracts',
    text: 'In a contract of guarantee, the person who gives the guarantee is the:',
    options: ['Principal debtor', 'Creditor', 'Surety', 'Indemnifier'],
    answerIndex: 2,
    explanation: 'A guarantee has three parties: the surety (who gives the '
        'guarantee), the principal debtor and the creditor.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
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
    chapter: 'Special Contracts',
    text: 'The bailment of goods as security for payment of a debt or '
        'performance of a promise is called:',
    options: ['Pledge', 'Mortgage', 'Hypothecation', 'Lien'],
    answerIndex: 0,
    explanation: 'Section 172 defines pledge. The bailor is the pawnor and the '
        'bailee is the pawnee.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
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
    chapter: 'Special Contracts',
    text: 'An agent who, for an extra commission, guarantees the principal that '
        'third parties will perform their contracts is a:',
    options: ['Sub-agent', 'Mercantile agent', 'Broker', 'Del credere agent'],
    answerIndex: 3,
    explanation: 'A del credere agent takes on the risk of the buyer\'s default '
        'in return for del credere commission.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text: 'In a contract of indemnity, the person who promises to make good '
        'the loss is the:',
    options: ['Indemnity-holder', 'Indemnifier', 'Bailee', 'Surety'],
    answerIndex: 1,
    explanation: 'Under Section 124, the indemnifier promises to save the '
        'indemnity-holder (indemnified) from loss.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text: 'A continuing guarantee may be revoked by the surety, as regards '
        'future transactions, by:',
    options: [
      'Giving notice to the principal debtor only',
      'Simply stopping payment',
      'Paying the existing debt',
      'Giving notice to the creditor',
    ],
    answerIndex: 3,
    explanation: 'Section 130: a continuing guarantee may be revoked at any time for '
        'future transactions by notice to the creditor.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text: 'A surety who pays the guaranteed debt steps into the shoes of the '
        'creditor. This is the surety\'s right of:',
    options: ['Contribution', 'Set-off', 'Subrogation', 'Lien'],
    answerIndex: 2,
    explanation: 'Under section 140, the surety gets all the rights the creditor had '
        'against the principal debtor.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text: 'Under section 171 of the Indian Contract Act, a general lien is '
        'available to:',
    options: ['Bankers', 'Every bailee', 'Every buyer', 'Every agent'],
    answerIndex: 0,
    explanation: 'Bankers, factors, wharfingers, attorneys of a High Court and '
        'policy brokers have a general lien.',
  ),

  // Sale of goods and negotiable instruments
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
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
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: 'A person who obtains a negotiable instrument for consideration, '
        'before maturity, in good faith and without notice of any defect in '
        'title is a:',
    options: ['Holder', 'Payee', 'Holder in due course', 'Drawee in case of need'],
    answerIndex: 2,
    explanation: 'This is a holder in due course under Section 9 of the '
        'Negotiable Instruments Act, 1881, who gets a better title than the '
        'transferor.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: 'The unpaid seller\'s lien is the right to:',
    options: [
      'Resell the goods at once without notice',
      'Retain possession of the goods until the price is paid',
      'Stop the goods while in transit',
      'Recover the goods from the buyer\'s premises',
    ],
    answerIndex: 1,
    explanation: 'Lien (Sections 47–49) allows the unpaid seller in possession to '
        'retain the goods; stoppage in transit applies when goods are with '
        'a carrier.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: 'Where there is an unconditional contract for the sale of specific '
        'goods in a deliverable state, property passes to the buyer:',
    options: [
      'Only when the goods are weighed',
      'When the contract is made',
      'Only when the price is paid',
      'Only on delivery',
    ],
    answerIndex: 1,
    explanation: 'Section 20: property passes when the contract is made, even if '
        'payment or delivery is postponed.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: 'Under Section 138 of the Negotiable Instruments Act, after a '
        'cheque is dishonoured for insufficient funds, the payee must send '
        'a written demand notice to the drawer within:',
    options: [
      '30 days of receiving information of dishonour from the bank',
      '3 months of the date of the cheque',
      '1 year of dishonour',
      '15 days of the date of the cheque',
    ],
    answerIndex: 0,
    explanation: 'The notice must be given within 30 days of receiving information '
        'from the bank; the drawer then has 15 days to pay.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: 'An endorsement in which the endorser simply signs his name, '
        'without naming the endorsee, is a:',
    options: [
      'Special (full) endorsement',
      'Blank (general) endorsement',
      'Restrictive endorsement',
      'Conditional endorsement',
    ],
    answerIndex: 1,
    explanation: 'A blank endorsement makes the instrument payable to bearer.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: 'The rule "nemo dat quod non habet" in the Sale of Goods Act means:',
    options: [
      'The seller must deliver at once',
      'No one can give a better title than he himself has',
      'Let the buyer beware',
      'The price must be paid in money',
    ],
    answerIndex: 1,
    explanation: 'Section 27 contains this rule, subject to exceptions such as sale '
        'by a mercantile agent.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: 'An unpaid seller may resell the goods when:',
    options: [
      'The goods are perishable, or he gives notice and the buyer does not pay within a reasonable time',
      'Delivery has already been made',
      'The buyer asks for more time',
      'The price rises in the market',
    ],
    answerIndex: 0,
    explanation: 'Section 54 gives the unpaid seller a right of resale in these '
        'cases.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: 'A material alteration of a negotiable instrument without the '
        'consent of the parties:',
    options: [
      'Has no effect',
      'Makes it more valuable',
      'Makes all parties fully liable',
      'Makes it void against parties who did not consent',
    ],
    answerIndex: 3,
    explanation: 'Section 87: a material alteration discharges the parties who did '
        'not consent to it.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: 'The offence of dishonour of a cheque under section 138 is '
        'punishable with imprisonment up to:',
    options: [
      'A fine of ₹1,000 only',
      '7 years',
      '2 years, or a fine up to twice the cheque amount, or both',
      '6 months only',
    ],
    answerIndex: 2,
    explanation: 'Section 138 provides this punishment, subject to the notice and '
        'payment period.',
  ),

  // Partnership, LLP and companies
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
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
    chapter: 'Partnership & LLP',
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
    chapter: 'Partnership & LLP',
    text: 'The maximum number of partners permitted in a partnership firm '
        'under the Companies Act, 2013 and its rules is:',
    options: ['20', '200', '50', '100'],
    answerIndex: 2,
    explanation: 'Section 464 read with Rule 10 of the Companies (Miscellaneous) '
        'Rules, 2014 limits a partnership to 50 partners.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text: 'The liability of partners in a partnership firm is:',
    options: [
      'Unlimited, joint and several',
      'Limited to their guarantee',
      'Limited to their share of profits',
      'Limited to their capital',
    ],
    answerIndex: 0,
    explanation: 'Each partner is personally liable, jointly with the others and '
        'individually, for all acts of the firm.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text: 'The liability of a partner in an LLP is generally:',
    options: [
      'Joint and several for all debts',
      'Equal to the LLP\'s total debts',
      'Limited to the agreed contribution',
      'Unlimited',
    ],
    answerIndex: 2,
    explanation: 'An LLP is a separate legal entity; partners are liable only to '
        'their agreed contribution, except in cases of fraud.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text: 'Under the LLP Act, 2008, an LLP is:',
    options: [
      'A type of private company',
      'A partnership with no separate legal existence',
      'A body corporate with perpetual succession',
      'An unregistered association',
    ],
    answerIndex: 2,
    explanation: 'Section 3 makes an LLP a body corporate, separate from its '
        'partners, with perpetual succession.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text: 'Under the Indian Partnership Act, a partnership arises from:',
    options: [
      'Operation of law',
      'Birth in a family',
      'An agreement, not from status',
      'Inheritance',
    ],
    answerIndex: 2,
    explanation: 'Section 5: unlike a Hindu Undivided Family, a partnership is '
        'created by contract.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text: 'A partnership at will can be dissolved by:',
    options: [
      'Only the death of all partners',
      'Only the Registrar',
      'Only a court order',
      'Any partner giving notice in writing to all other partners',
    ],
    answerIndex: 3,
    explanation: 'Section 43 allows dissolution of a partnership at will by notice.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text: 'A minor can be admitted to the benefits of a partnership:',
    options: [
      'With the consent of a majority of partners',
      'With the consent of all the partners',
      'Never',
      'Only by a court order',
    ],
    answerIndex: 1,
    explanation: 'Section 30: a minor cannot be a partner but may share in the '
        'benefits.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text: 'Under the LLP Act, 2008, a change in the partners of an LLP must '
        'be filed with the Registrar within:',
    options: ['30 days', '7 days', '1 year', '60 days'],
    answerIndex: 0,
    explanation: 'Section 25 requires notice of a change in partners within 30 days.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
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
    chapter: 'Companies Act, 2013',
    text: 'The minimum number of members required to form a public company is:',
    options: ['2', '5', '7', '15'],
    answerIndex: 2,
    explanation: 'Under Section 3 of the Companies Act, 2013, a public company '
        'needs at least seven members, a private company two, and an OPC one.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text: 'The maximum number of members of a private company (excluding '
        'present and former employee-members) is:',
    options: ['50', '100', '500', '200'],
    answerIndex: 3,
    explanation: 'Section 2(68) of the Companies Act, 2013 limits a private '
        'company to 200 members, excluding employee-members.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
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
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text: 'Under the doctrine of ultra vires, an act of a company beyond the '
        'objects in its Memorandum is:',
    options: [
      'Void and cannot be ratified even by all members',
      'Valid if approved by the Board',
      'Voidable at the option of the company',
      'Valid if ratified by shareholders',
    ],
    answerIndex: 0,
    explanation: 'An ultra vires act is void ab initio and cannot be ratified '
        '(Ashbury Railway Carriage Co. v. Riche).',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text: 'The minimum number of directors in a public company is:',
    options: ['7', '3', '1', '2'],
    answerIndex: 1,
    explanation: 'Section 149: a public company must have at least 3 directors, a '
        'private company 2 and a One Person Company 1.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text: 'The document that sets out a company\'s objects and its '
        'relationship with the outside world is the:',
    options: [
      'Memorandum of Association',
      'Certificate of commencement',
      'Prospectus',
      'Articles of Association',
    ],
    answerIndex: 0,
    explanation: 'The Memorandum is the charter of the company; the Articles deal '
        'with internal management.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text: 'The Articles of Association mainly govern:',
    options: [
      'The issue of a prospectus',
      'The company\'s dealings with the government',
      'The objects of the company',
      'The internal management of the company',
    ],
    answerIndex: 3,
    explanation: 'They contain rules for meetings, directors, transfer of shares and '
        'so on.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text: 'The minimum number of members required to form a private company '
        'is:',
    options: ['3', '2', '7', '1'],
    answerIndex: 1,
    explanation: 'A public company needs 7 and a One Person Company 1.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text: 'A Section 8 company is formed to:',
    options: [
      'Earn maximum profit for members',
      'Promote objects such as commerce, art, science, charity or education, without paying dividends',
      'Act as a government department',
      'Carry on banking',
    ],
    answerIndex: 1,
    explanation: 'Its profits must be applied only to promoting its objects.',
  ),

  // Ethics
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text: 'The word "ethics" is derived from the Greek word "ethos", which means:',
    options: ['Law', 'Character or custom', 'Profit', 'Religion'],
    answerIndex: 1,
    explanation: 'Ethos means character, custom or habit. Ethics deals with '
        'standards of right and wrong conduct.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text: 'An employee reporting fraud or unethical practices within the '
        'organisation to authorities is known as:',
    options: ['Insider trading', 'Lobbying', 'Whistle-blowing', 'Moonlighting'],
    answerIndex: 2,
    explanation: 'Whistle-blowing is disclosing wrongdoing, either internally or '
        'to outside authorities. Companies set up vigil mechanisms to support it.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text: 'Under Section 135 of the Companies Act, 2013, CSR provisions apply '
        'if, in the immediately preceding financial year, the company\'s net '
        'profit was at least:',
    options: ['₹500 crore', '₹5 crore', '₹1 crore', '₹50 crore'],
    answerIndex: 1,
    explanation: 'CSR applies to companies with net worth ₹500 crore or more, '
        'turnover ₹1,000 crore or more, or net profit ₹5 crore or more.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text: 'A company covered by CSR must generally spend at least what share '
        'of its average net profit of the three immediately preceding '
        'financial years?',
    options: ['2%', '1%', '10%', '5%'],
    answerIndex: 0,
    explanation: 'Section 135(5) requires spending at least 2% of the average net '
        'profits of the preceding three years.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text: 'Ethics is the study of:',
    options: [
      'Laws passed by Parliament',
      'Profit maximisation',
      'Market prices',
      'Right and wrong in human conduct',
    ],
    answerIndex: 3,
    explanation: 'Ethics deals with moral principles that guide what is right or '
        'wrong; it goes beyond legal compliance.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text: 'A conflict of interest arises when:',
    options: [
      'Employees disagree on a work method',
      'A firm changes its accounting policy',
      'Two companies compete in a market',
      'A person\'s private interest could influence the performance of official duties',
    ],
    answerIndex: 3,
    explanation: 'It is a situation where personal gain may compromise objectivity; '
        'it should be disclosed and managed.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text: 'Corporate governance refers to:',
    options: [
      'Tax planning',
      'Government control over companies',
      'Marketing strategy of a company',
      'The system by which companies are directed and controlled',
    ],
    answerIndex: 3,
    explanation: 'It covers the relationship between shareholders, the board and '
        'management.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text: 'Utilitarianism judges an action by whether it:',
    options: [
      'Is legal',
      'Produces the greatest good for the greatest number',
      'Benefits the decision-maker most',
      'Follows religious rules',
    ],
    answerIndex: 1,
    explanation: 'It is a consequence-based ethical theory associated with Bentham '
        'and Mill.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text: 'Insider trading means:',
    options: [
      'Selling goods to employees',
      'Trading in a company\'s own products',
      'Trading within the company\'s premises',
      'Dealing in securities on the basis of unpublished price sensitive information',
    ],
    answerIndex: 3,
    explanation: 'SEBI\'s Prohibition of Insider Trading Regulations prohibit this.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text: 'A code of conduct is:',
    options: [
      'The Companies Act',
      'A set of rules describing expected behaviour and responsibilities',
      'A tax return form',
      'An audit report',
    ],
    answerIndex: 1,
    explanation: 'It guides employees on ethical behaviour, conflicts of interest '
        'and compliance.',
  ),
];
