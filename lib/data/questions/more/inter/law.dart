import '../../../../models/question.dart';

const interLawMoreQuestions = [
  // Special Contracts
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text:
        'Under section 151, a bailee must take as much care of the goods '
        'as:',
    options: [
      'The bailor asks for',
      'A person of ordinary prudence would take of his own similar goods',
      'The highest possible care',
      'No care, if the bailment is gratuitous',
    ],
    answerIndex: 1,
    explanation:
        'The standard is ordinary prudence. If the bailee takes that '
        'care, he is not liable for loss (section 152), unless the contract '
        'says otherwise.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text: 'If the pawnor defaults, the pawnee may sell the pledged goods:',
    options: [
      'At any time without notice',
      'After giving the pawnor reasonable notice of the sale',
      'Only with a court order',
      'Never',
    ],
    answerIndex: 1,
    explanation:
        'Section 176 lets the pawnee sue for the debt and keep the '
        'goods, or sell them after reasonable notice.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text: 'For an act to be ratified, the principal must have been:',
    options: [
      'In existence and competent when the act was done',
      'Present when the act was done',
      'A company',
      'Informed in writing beforehand',
    ],
    answerIndex: 0,
    explanation:
        'Ratification relates back to the date of the act, so the '
        'principal must have existed and had capacity then. A company cannot '
        'ratify pre-incorporation contracts this way.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text:
        'A person named by the agent, on the principal\'s express or '
        'implied authority, to act for the principal is a:',
    options: [
      'Sub-agent',
      'Substituted agent',
      'Del credere agent',
      'Mercantile agent',
    ],
    answerIndex: 1,
    explanation:
        'A substituted agent (section 194) becomes the principal\'s own '
        'agent. A sub-agent acts under the control of the original agent.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text:
        'A finder of lost goods who takes them into custody is treated as '
        'a:',
    options: ['Owner', 'Bailee', 'Agent', 'Surety'],
    answerIndex: 1,
    explanation:
        'Section 71 gives the finder the same responsibility as a '
        'bailee. He may also have a lien for expenses and can sell in some '
        'cases (section 169).',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text: 'A bailment in which the bailee receives no reward is a:',
    options: [
      'Non-gratuitous bailment',
      'Gratuitous bailment',
      'Pledge',
      'Hypothecation',
    ],
    answerIndex: 1,
    explanation: 'An example is lending a book to a friend free of charge.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text: 'A surety is discharged when the creditor:',
    options: [
      'Demands payment from the principal debtor',
      'Releases the principal debtor',
      'Gives notice to the surety',
      'Charges interest',
    ],
    answerIndex: 1,
    explanation:
        'Under section 134, releasing or discharging the principal '
        'debtor discharges the surety.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text:
        'Co-sureties liable for the same debt, with no agreement among '
        'them, share the liability:',
    options: [
      'In proportion to their wealth',
      'Equally',
      'Only the first surety pays',
      'In the ratio of their age',
    ],
    answerIndex: 1,
    explanation:
        'Section 146 makes co-sureties liable to contribute equally, '
        'unless they agree otherwise.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text: 'An agency is terminated by:',
    options: [
      'The agent earning commission',
      'The death or insanity of the principal',
      'The principal travelling abroad',
      'A change in the agent\'s address',
    ],
    answerIndex: 1,
    explanation:
        'Section 201 lists termination by revocation, renunciation, '
        'completion, death or insanity of either party, and insolvency of '
        'the principal.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text: 'An agent who makes a secret profit from the agency must:',
    options: [
      'Keep it as extra commission',
      'Account for it to the principal',
      'Share it with the third party',
      'Pay it to the government',
    ],
    answerIndex: 1,
    explanation:
        'An agent owes a duty of good faith and must not profit '
        'secretly. The principal can claim the profit and refuse '
        'remuneration for that transaction.',
  ),

  // Sale of Goods & Negotiable Instruments
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text:
        'Delivery of goods to a carrier for sending to the buyer is, '
        'prima facie:',
    options: [
      'No delivery',
      'Delivery to the buyer',
      'Delivery to the seller\'s agent',
      'Conditional delivery',
    ],
    answerIndex: 1,
    explanation:
        'Under section 39, the carrier is treated as the buyer\'s '
        'agent, so handing the goods to it is delivery to the buyer.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: 'In an auction, the seller may bid himself only if:',
    options: [
      'The price is low',
      'The right to bid is expressly reserved and notified',
      'The auctioneer agrees privately',
      'The goods are perishable',
    ],
    answerIndex: 1,
    explanation:
        'Section 64 forbids the seller from bidding unless the right '
        'is notified. Otherwise the buyer may treat the sale as fraudulent.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: 'Unless otherwise agreed, a buyer is:',
    options: [
      'Bound to accept delivery in instalments',
      'Not bound to accept delivery in instalments',
      'Bound to collect the goods from the factory',
      'Bound to pay before delivery',
    ],
    answerIndex: 1,
    explanation:
        'Section 38 says the buyer need not accept delivery by '
        'instalments unless the contract provides for it.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text:
        'An instrument that can be read either as a bill or as a note is '
        'an:',
    options: [
      'Inchoate instrument',
      'Ambiguous instrument',
      'Accommodation bill',
      'Escrow',
    ],
    answerIndex: 1,
    explanation:
        'Under section 17, the holder may treat an ambiguous '
        'instrument as either, but once chosen it must be treated so '
        'thereafter.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text:
        'Under section 118, until the contrary is proved, it is presumed '
        'that every negotiable instrument:',
    options: [
      'Was made without consideration',
      'Was made or drawn for consideration',
      'Is forged',
      'Is payable on demand',
    ],
    answerIndex: 1,
    explanation:
        'Section 118 also presumes the date, time of acceptance, '
        'order of endorsements and that the holder is a holder in due '
        'course.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: 'A minor who draws or endorses a negotiable instrument:',
    options: [
      'Is personally liable on it',
      'Can transfer it, binding all parties except himself',
      'Makes it void for everyone',
      'Becomes liable on reaching majority',
    ],
    answerIndex: 1,
    explanation:
        'Under section 26, a minor\'s signature binds the other '
        'parties, but the minor is not liable.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text:
        'An acceptance by the drawee that varies the effect of the bill, '
        'for example "accepted, payable on delivery of goods", is a:',
    options: [
      'General acceptance',
      'Qualified acceptance',
      'Acceptance for honour',
      'Blank acceptance',
    ],
    answerIndex: 1,
    explanation:
        'A qualified acceptance adds a condition or changes the amount, '
        'time or place. The holder may refuse it and treat the bill as '
        'dishonoured.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: 'A "truncated cheque" is one where:',
    options: [
      'Part of the cheque is torn',
      'The physical cheque is replaced by an electronic image during '
          'clearing',
      'The amount is written only in figures',
      'The cheque is post-dated',
    ],
    answerIndex: 1,
    explanation:
        'Under cheque truncation, the bank sends an electronic image '
        'for clearing instead of moving the paper cheque.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text:
        'The implied condition that the seller has the right to sell the '
        'goods is found in section:',
    options: ['12', '14', '16', '20'],
    answerIndex: 1,
    explanation:
        'Section 14 implies a condition as to title, and warranties '
        'of quiet possession and freedom from encumbrances.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: '"Payment in due course" (section 10) requires payment:',
    options: [
      'Before maturity to anyone',
      'In accordance with the apparent tenor, in good faith and without '
          'negligence, to the person in possession',
      'Only in cash',
      'Only through a court',
    ],
    answerIndex: 1,
    explanation:
        'Such payment discharges the instrument, provided the payer '
        'had no reason to believe the holder was not entitled to payment.',
  ),

  // Partnership & LLP
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text:
        'Under the implied authority of a partner, a partner CANNOT, '
        'without express authority:',
    options: [
      'Buy goods for the firm\'s business',
      'Submit a dispute of the firm to arbitration',
      'Receive payments for the firm',
      'Employ servants for the business',
    ],
    answerIndex: 1,
    explanation:
        'Section 19(2) lists acts outside implied authority, '
        'including arbitration, opening a bank account in his own name and '
        'transferring immovable property.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text: 'A partnership firm is compulsorily dissolved when:',
    options: [
      'One partner is ill',
      'All partners, or all but one, become insolvent',
      'Profits fall',
      'A partner retires with notice',
    ],
    answerIndex: 1,
    explanation:
        'Section 41 also provides for compulsory dissolution when the '
        'business becomes unlawful.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text: 'An unregistered firm:',
    options: [
      'Can sue third parties freely',
      'Cannot sue third parties to enforce a contract',
      'Is illegal',
      'Cannot be sued by third parties',
    ],
    answerIndex: 1,
    explanation:
        'Section 69 bars an unregistered firm and its partners from '
        'suing third parties or each other to enforce contractual rights. '
        'Third parties can still sue the firm.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text:
        'A new partner can be admitted into a firm, unless otherwise '
        'agreed:',
    options: [
      'With the consent of a majority of partners',
      'With the consent of all existing partners',
      'By the senior partner alone',
      'By the registrar',
    ],
    answerIndex: 1,
    explanation: 'Section 31 requires the consent of all existing partners.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text: 'A partner may be expelled:',
    options: [
      'By any partner at any time',
      'By a majority, in good faith, only if the partnership contract '
          'gives that power',
      'Never',
      'Only by the court',
    ],
    answerIndex: 1,
    explanation:
        'Section 33 allows expulsion only under a power in the '
        'contract, exercised in good faith by a majority.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text:
        'A person who represents himself as a partner, and is relied on '
        'by a third party, becomes liable as a partner by:',
    options: ['Novation', 'Holding out', 'Ratification', 'Subrogation'],
    answerIndex: 1,
    explanation:
        'Under section 28 (partnership by estoppel), such a person is '
        'liable to anyone who gave credit to the firm on that '
        'representation.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text:
        'Where there is no LLP agreement on a matter, the mutual rights '
        'and duties of the partners are governed by:',
    options: [
      'The Indian Partnership Act, 1932',
      'The First Schedule to the LLP Act, 2008',
      'The Companies Act, 2013',
      'The Registrar\'s decision',
    ],
    answerIndex: 1,
    explanation:
        'The First Schedule contains default provisions, for example '
        'that partners share capital and profits equally.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text: 'Among the designated partners of an LLP, at least one must be:',
    options: [
      'A chartered accountant',
      'Resident in India',
      'A company',
      'Over 60 years old',
    ],
    answerIndex: 1,
    explanation:
        'Section 7 of the LLP Act requires at least two designated '
        'partners who are individuals, at least one of them resident in '
        'India.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text: 'An LLP must file its annual return with the Registrar within:',
    options: [
      '30 days of the end of the financial year',
      '60 days of the end of the financial year',
      '6 months of the end of the financial year',
      '1 year',
    ],
    answerIndex: 1,
    explanation:
        'Section 35 requires the annual return within 60 days of the '
        'close of the financial year.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text: 'The court may dissolve a firm on the suit of a partner when:',
    options: [
      'A partner becomes of unsound mind',
      'Profits are high',
      'A new partner is admitted',
      'The firm opens a branch',
    ],
    answerIndex: 0,
    explanation:
        'Section 44 lists grounds including unsoundness of mind, '
        'permanent incapacity, misconduct, persistent breach and that the '
        'business can only be carried on at a loss.',
  ),

  // Companies Act, 2013
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text:
        'The principle that a company is a legal person separate from its '
        'members was established in:',
    options: [
      'Salomon v. Salomon & Co. Ltd.',
      'Royal British Bank v. Turquand',
      'Ashbury Railway Carriage Co. v. Riche',
      'Mohori Bibee v. Dharmodas Ghose',
    ],
    answerIndex: 0,
    explanation:
        'In Salomon (1897), the House of Lords held that the company '
        'was a separate entity, even though Salomon held almost all its '
        'shares.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text:
        'A company (other than a public company) whose paid-up capital '
        'does not exceed ₹4 crore and turnover does not exceed ₹40 crore is '
        'a:',
    options: [
      'One Person Company',
      'Small company',
      'Section 8 company',
      'Listed company',
    ],
    answerIndex: 1,
    explanation:
        'These are the limits under section 2(85) as revised in '
        '2022. Holding, subsidiary, Section 8 and special Act companies are '
        'excluded.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text:
        'A company with share capital must file a declaration for '
        'commencement of business under section 10A within:',
    options: [
      '30 days of incorporation',
      '180 days of incorporation',
      '1 year of incorporation',
      '15 months of incorporation',
    ],
    answerIndex: 1,
    explanation:
        'Directors must declare that subscribers have paid for their '
        'shares within 180 days of incorporation.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text: 'The gap between two annual general meetings must not exceed:',
    options: ['12 months', '15 months', '18 months', '9 months'],
    answerIndex: 1,
    explanation:
        'Section 96 allows no more than 15 months between AGMs, and '
        'each AGM must be held within 6 months of the end of the financial '
        'year (9 months for the first AGM).',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text:
        'For a public company with up to 1,000 members, the quorum for a '
        'general meeting is:',
    options: [
      '2 members personally present',
      '5 members personally present',
      '15 members personally present',
      '30 members personally present',
    ],
    answerIndex: 1,
    explanation:
        'Section 103: 5 members (up to 1,000 members), 15 (1,000 to '
        '5,000) and 30 (above 5,000). For a private company it is 2.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text: 'A special resolution is passed when votes in favour are:',
    options: [
      'More than votes against',
      'At least three times the votes against',
      'At least twice the votes against',
      'Unanimous',
    ],
    answerIndex: 1,
    explanation:
        'Section 114(2): votes in favour must be at least three times '
        'the votes cast against. An ordinary resolution needs only more '
        'votes in favour than against.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text:
        'A listed public company must have independent directors making up '
        'at least:',
    options: [
      'One-fourth of the board',
      'One-third of the total number of directors',
      'Half of the board',
      'Two directors only',
    ],
    answerIndex: 1,
    explanation:
        'Section 149(4) requires at least one-third. SEBI\'s Listing '
        'Regulations may require more in some cases.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text: 'Every listed company must have on its board at least:',
    options: [
      'One woman director',
      'Two foreign directors',
      'One government nominee',
      'One auditor',
    ],
    answerIndex: 0,
    explanation:
        'Under section 149(1), listed companies and certain large '
        'public companies must appoint at least one woman director.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text:
        'The maximum number of directors a company may have, without a '
        'special resolution, is:',
    options: ['7', '12', '15', '20'],
    answerIndex: 2,
    explanation:
        'Section 149(1) allows up to 15 directors. More can be '
        'appointed by passing a special resolution.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text:
        'A prospectus that does not contain complete details of the price '
        'or quantity of securities offered is a:',
    options: [
      'Shelf prospectus',
      'Red herring prospectus',
      'Abridged prospectus',
      'Deemed prospectus',
    ],
    answerIndex: 1,
    explanation:
        'A red herring prospectus (section 32) is used in book '
        'building, before the final price is fixed.',
  ),

  // Business Ethics
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text:
        'An ethical theory that judges actions by duties and rules, '
        'rather than consequences, is:',
    options: [
      'Utilitarianism',
      'Deontology (Kantian ethics)',
      'Egoism',
      'Relativism',
    ],
    answerIndex: 1,
    explanation:
        'Kant held that some actions, such as lying, are wrong in '
        'themselves, whatever good results they might bring.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text:
        'Stakeholder theory says that management should consider the '
        'interests of:',
    options: [
      'Shareholders only',
      'All groups affected by the business, such as employees, customers, '
          'suppliers and society',
      'Directors only',
      'The government only',
    ],
    answerIndex: 1,
    explanation:
        'It contrasts with the view that a company exists only to '
        'maximise shareholder wealth.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text: 'An ethical dilemma is a situation where:',
    options: [
      'The law is unclear',
      'A choice must be made between two options, each of which breaks '
          'some moral principle',
      'There is no right answer at all',
      'Profits are falling',
    ],
    answerIndex: 1,
    explanation:
        'For example, loyalty to a colleague may conflict with '
        'honesty to the employer.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text:
        'The "triple bottom line" measures a company\'s performance in '
        'terms of:',
    options: [
      'Sales, costs and profit',
      'People, planet and profit',
      'Assets, liabilities and equity',
      'Price, product and place',
    ],
    answerIndex: 1,
    explanation:
        'It adds social and environmental performance to financial '
        'results.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text:
        'Making misleading claims about the environmental benefits of a '
        'product is called:',
    options: [
      'Green marketing',
      'Greenwashing',
      'Whistle-blowing',
      'Window dressing',
    ],
    answerIndex: 1,
    explanation:
        'Greenwashing misleads customers and investors, and damages '
        'trust when exposed.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text:
        'Under section 177 of the Companies Act, 2013, every listed company '
        'must establish a:',
    options: [
      'Vigil mechanism for directors and employees to report concerns',
      'Marketing committee',
      'Separate bank account for CSR',
      'Trade union',
    ],
    answerIndex: 0,
    explanation:
        'The vigil (whistle-blower) mechanism must protect those who '
        'use it from victimisation, with direct access to the audit '
        'committee chair in suitable cases.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text:
        'A company to which CSR applies must constitute a CSR Committee '
        'of the board with at least:',
    options: [
      'One director',
      'Three directors (two in certain cases)',
      'Five directors',
      'All directors',
    ],
    answerIndex: 1,
    explanation:
        'Section 135(1) requires three or more directors, including '
        'an independent director. Unlisted public and private companies not '
        'required to have an independent director may have two.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text:
        'The view that what is morally right depends on the culture of a '
        'society is called:',
    options: [
      'Ethical relativism',
      'Utilitarianism',
      'Virtue ethics',
      'Deontology',
    ],
    answerIndex: 0,
    explanation:
        'Relativism says there are no universal moral standards. '
        'Critics argue that some practices, such as bribery, are wrong '
        'everywhere.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text: 'The core values of good corporate governance include:',
    options: [
      'Secrecy and speed',
      'Transparency, accountability, fairness and responsibility',
      'Maximum dividends at any cost',
      'Control by one shareholder',
    ],
    answerIndex: 1,
    explanation:
        'These values protect the interests of shareholders and other '
        'stakeholders and build trust in the company.',
  ),
  Question(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text: 'Virtue ethics judges a person mainly by:',
    options: [
      'The results of each action',
      'Their character, such as honesty and courage',
      'The law alone',
      'Customer feedback',
    ],
    answerIndex: 1,
    explanation:
        'Virtue ethics, from Aristotle, asks what a person of good '
        'character would do, rather than applying rules or counting results.',
  ),
];
