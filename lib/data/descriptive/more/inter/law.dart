import '../../../../models/question.dart';

const interLawMoreDescriptive = [
  // Special Contracts
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text: 'State the duties of a bailee under the Indian Contract Act, 1872.',
    marks: 5,
    answer:
        '• Take reasonable care of the goods (section 151), as a person of '
        'ordinary prudence would take of his own goods.\n'
        '• Not make unauthorised use of the goods (section 154); otherwise he '
        'is liable for any damage.\n'
        '• Not mix the bailor\'s goods with his own without consent (sections '
        '155 to 157).\n'
        '• Return the goods when the time or purpose is over (section 160); '
        'if he fails, he is liable for loss even without negligence (section '
        '161).\n'
        '• Return any increase or profit from the goods, such as the young of '
        'an animal (section 163).\n'
        '• Not set up a title adverse to the bailor.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text: 'Explain the ways in which an agency can be created.',
    marks: 5,
    answer:
        '• By express agreement: oral or written, for example a power of '
        'attorney.\n'
        '• By implied agreement: from conduct or the relationship, such as a '
        'manager buying supplies for the business.\n'
        '• By estoppel: when the principal leads a third party to believe '
        'someone is his agent, he cannot later deny it.\n'
        '• By necessity: in an emergency, a person may act to protect '
        'another\'s property, such as a carrier selling perishable goods.\n'
        '• By ratification: the principal later adopts an act done on his '
        'behalf without authority. Ratification relates back to the date of '
        'the act.\n'
        '• By operation of law: for example, a partner is an agent of the '
        'firm.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text:
        'X, a mercantile agent, has possession of B\'s goods with B\'s '
        'consent. Without B\'s authority, X pledges the goods with a bank to '
        'raise a loan for himself. The bank acts in good faith. Is the '
        'pledge valid?',
    marks: 4,
    problem: true,
    answer:
        'Provision: Under section 178 of the Indian Contract Act, 1872, '
        'a mercantile agent in possession of goods with the owner\'s consent '
        'can make a valid pledge while acting in the ordinary course of '
        'business, provided the pawnee acts in good faith and has no notice '
        'that the agent had no authority.\n'
        'Analysis: X is a mercantile agent, has possession with B\'s consent, '
        'and the bank took the goods in good faith.\n'
        'Conclusion: The pledge is valid and binding on B. The bank can '
        'keep the goods until the loan is repaid. B\'s remedy is against X.',
  ),

  // Sale of Goods & Negotiable Instruments
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text: 'Explain the kinds of endorsement of a negotiable instrument.',
    marks: 5,
    answer:
        '• Blank (general) endorsement: only the endorser\'s signature; '
        'the instrument becomes payable to bearer.\n'
        '• Special (full) endorsement: names the endorsee, for example "Pay '
        'R or order"; further negotiation needs R\'s endorsement.\n'
        '• Restrictive endorsement: limits further negotiation, for example '
        '"Pay R only".\n'
        '• Partial endorsement: transfers only part of the amount; it is not '
        'valid as a negotiation (section 56).\n'
        '• Conditional endorsement: makes the endorser\'s liability depend on '
        'an event, for example "Pay R on his marriage".\n'
        '• Sans recourse endorsement: the endorser excludes his own '
        'liability, for example "Pay R without recourse to me".\n'
        '• Facultative endorsement: the endorser gives up a right, such as '
        'notice of dishonour.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text:
        'B orders 100 bags of sugar from S. S delivers 120 bags. What are '
        'B\'s options? Would the answer change if S delivered 100 bags of '
        'sugar mixed with 20 bags of rice?',
    marks: 4,
    problem: true,
    answer:
        'Provision: Section 37 of the Sale of Goods Act, 1930 deals with '
        'delivery of the wrong quantity.\n'
        'Larger quantity delivered (120 bags): B may\n'
        '• accept the 100 bags ordered and reject the rest;\n'
        '• reject the whole delivery; or\n'
        '• accept all 120 bags, paying for the extra at the contract rate.\n'
        'Goods mixed with goods of a different description (sugar with '
        'rice): B may accept the goods that match the contract (100 bags of '
        'sugar) and reject the rest, or reject the whole.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text:
        'State the presumptions about negotiable instruments under section '
        '118 of the Negotiable Instruments Act, 1881.',
    marks: 5,
    answer:
        'Until the contrary is proved, it is presumed that:\n'
        '• The instrument was made or drawn for consideration.\n'
        '• It bears the date on which it was made or drawn.\n'
        '• It was accepted within a reasonable time after its date and '
        'before maturity.\n'
        '• Every transfer was made before maturity.\n'
        '• Endorsements were made in the order in which they appear.\n'
        '• A lost instrument was duly stamped.\n'
        '• The holder is a holder in due course. But if the instrument was '
        'obtained by fraud or unlawful means, the holder must prove that he '
        'is a holder in due course.',
  ),

  // Partnership & LLP
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text: 'Explain the modes of dissolution of a partnership firm.',
    marks: 5,
    answer:
        '• By agreement (section 40): with the consent of all partners, '
        'or as per the contract.\n'
        '• Compulsory dissolution (section 41): when all partners, or all '
        'but one, become insolvent, or the business becomes unlawful.\n'
        '• On contingencies (section 42), unless agreed otherwise: expiry of '
        'the fixed term, completion of the venture, or death or insolvency of '
        'a partner.\n'
        '• By notice (section 43): in a partnership at will, any partner can '
        'dissolve the firm by written notice to the others.\n'
        '• By the court (section 44): on a partner\'s suit, on grounds such '
        'as unsound mind, permanent incapacity, misconduct, persistent '
        'breach, transfer of a partner\'s whole interest, continuing losses, '
        'or any other just and equitable ground.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text:
        '(a) P, a partner in a trading firm, borrows ₹2,00,000 in the '
        'firm\'s name for the business, without consulting the other '
        'partners. (b) Q, a partner in a firm of architects, does the same. '
        'Is the firm bound in each case?',
    marks: 4,
    problem: true,
    answer:
        'Provision: Under sections 19 and 22 of the Indian Partnership '
        'Act, 1932, a partner\'s implied authority covers acts done in the '
        'usual way of the firm\'s business.\n'
        '(a) Borrowing money is usual in a trading firm, which buys and '
        'sells goods. P had implied authority, so the firm is bound.\n'
        '(b) Borrowing is not usual in a non-trading firm such as architects. '
        'Q had no implied authority, so the firm is not bound unless the '
        'other partners authorised or ratified the loan. Q is personally '
        'liable.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text:
        'What are the consequences of non-registration of a partnership '
        'firm?',
    marks: 4,
    answer:
        'Under section 69 of the Indian Partnership Act, 1932:\n'
        '• A partner of an unregistered firm cannot sue the firm or the other '
        'partners to enforce a right arising from the contract or the Act.\n'
        '• The firm cannot sue a third party to enforce a contractual right.\n'
        '• The firm cannot claim a set-off above ₹100 in a suit against it.\n'
        'However:\n'
        '• Third parties can still sue the firm.\n'
        '• A partner can sue for dissolution, accounts and his share of '
        'property of a dissolved firm.\n'
        '• Rights arising outside contract, and suits under ₹100 in some '
        'courts, are not affected.',
  ),

  // Companies Act, 2013
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text:
        'Distinguish between an ordinary resolution and a special '
        'resolution, with examples.',
    marks: 4,
    answer:
        '• Majority: an ordinary resolution is passed if votes in favour '
        'exceed votes against; a special resolution needs votes in favour of '
        'at least three times the votes against.\n'
        '• Notice: a special resolution must be stated as such in the notice, '
        'with the intention to propose it.\n'
        '• Filing: special resolutions must be filed with the Registrar '
        'within 30 days; most ordinary resolutions need not be.\n'
        '• Ordinary examples: adopting accounts, declaring dividends, '
        'appointing directors and auditors.\n'
        '• Special examples: changing the articles or registered office '
        'between states, reducing capital, a buy-back above 10%, appointing '
        'more than 15 directors.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text:
        'A company was incorporated on 15 May 2025. Its first financial '
        'year ends on 31 March 2026. By when must it hold its first and '
        'second annual general meetings?',
    marks: 4,
    problem: true,
    answer:
        'Provision: Section 96 of the Companies Act, 2013.\n'
        '• First AGM: within 9 months of the end of the first financial '
        'year, so by 31 December 2026.\n'
        '• Later AGMs: within 6 months of the end of each financial year, '
        'and not more than 15 months after the previous AGM.\n'
        '• Second AGM (for the year ending 31 March 2027): by 30 September '
        '2027, and no later than 15 months after the first AGM.\n'
        'The Registrar may extend an AGM other than the first by up to 3 '
        'months for special reasons.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text:
        'H sold his business and agreed not to compete with the buyer. He '
        'then formed a company, controlled by him, to run a competing '
        'business. Can the buyer stop the company?',
    marks: 4,
    problem: true,
    answer:
        'Rule: A company is normally a separate legal person (Salomon v. '
        'Salomon). But courts may lift the corporate veil when the company '
        'is used as a sham or cloak to evade legal obligations or commit '
        'fraud.\n'
        'Analysis: This is similar to Gilford Motor Co. v. Horne, where a '
        'former employee formed a company to escape a non-compete covenant. '
        'The company was a mere device controlled by H.\n'
        'Conclusion: The court will lift the veil and grant an injunction '
        'against both H and the company.',
  ),

  // Business Ethics
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text:
        'Explain the provisions on Corporate Social Responsibility under '
        'section 135 of the Companies Act, 2013.',
    marks: 6,
    answer:
        'Applicability: a company with, in the preceding financial year, '
        'net worth of ₹500 crore or more, or turnover of ₹1,000 crore or '
        'more, or net profit of ₹5 crore or more.\n'
        'Requirements:\n'
        '• Form a CSR Committee (three or more directors, or two where an '
        'independent director is not required). If the CSR obligation is '
        'up to ₹50 lakh, the board itself can act.\n'
        '• Adopt a CSR policy covering activities in Schedule VII, such as '
        'education, health, environment and rural development.\n'
        '• Spend at least 2% of average net profits of the three preceding '
        'years.\n'
        '• Unspent amounts must be transferred to a Schedule VII fund, or, '
        'for ongoing projects, to an Unspent CSR Account within 30 days of '
        'the year end.\n'
        '• Disclose CSR activities in the board\'s report.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text: 'What are the main principles of good corporate governance?',
    marks: 5,
    answer:
        '• Transparency: timely and accurate disclosure of financial and '
        'other material information.\n'
        '• Accountability: the board and management are answerable to '
        'shareholders for their decisions.\n'
        '• Fairness: equal treatment of all shareholders, including minority '
        'and foreign shareholders.\n'
        '• Responsibility: the company respects the law and the interests of '
        'stakeholders and society.\n'
        '• Independence: independent directors and audit committees provide '
        'objective oversight.\n'
        '• Risk management and internal control.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text:
        'A purchase officer finds that his brother\'s firm has submitted '
        'the lowest bid for a contract he is evaluating. What should he do?',
    marks: 4,
    problem: true,
    answer:
        'Issue: This is a conflict of interest. His personal relationship '
        'could affect, or appear to affect, his judgement, even if the bid '
        'is genuinely the best.\n'
        'What he should do:\n'
        '• Disclose the relationship to his superior in writing at once.\n'
        '• Withdraw from evaluating and deciding on that contract.\n'
        '• Let an independent person or committee evaluate all bids on the '
        'same criteria.\n'
        '• Not share any confidential information with his brother.\n'
        'If the brother\'s firm wins through a fair process, there is no '
        'wrongdoing. Hiding the relationship would be unethical.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text:
        'Compare the utilitarian and deontological approaches to ethics, '
        'with a business example.',
    marks: 5,
    answer:
        '• Utilitarianism (Bentham, Mill): an action is right if it '
        'produces the greatest good for the greatest number. It looks at '
        'consequences.\n'
        '• Deontology (Kant): an action is right if it follows a moral duty '
        'or rule, whatever the consequences. People must be treated as ends, '
        'not only as means.\n'
        'Example: a company can save jobs by hiding a minor product defect.\n'
        '• A utilitarian might weigh the benefit to many workers against the '
        'harm to customers.\n'
        '• A deontologist would say hiding the defect is lying, and wrong '
        'in itself.\n'
        'Utilitarianism can justify harming a minority; deontology can be '
        'rigid when duties conflict.',
  ),
];
