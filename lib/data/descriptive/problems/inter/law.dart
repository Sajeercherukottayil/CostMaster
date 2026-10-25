import '../../../../models/question.dart';

const interLawProblems = [
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text:
        'A guarantees a loan of ₹5,00,000 given by C to B, repayable in '
        '2 years at 10% interest. Without A\'s knowledge, C and B agree to '
        'raise the interest to 14% and extend the period to 4 years. B '
        'defaults. Can C recover from A?',
    marks: 4,
    problem: true,
    answer:
        'Provision: Under section 133 of the Indian Contract Act, 1872, '
        'any variance in the terms of the contract between the principal '
        'debtor and the creditor, made without the surety\'s consent, '
        'discharges the surety for transactions after the variance.\n'
        'Analysis: The interest rate and period were changed without A\'s '
        'consent. This is a material variance.\n'
        'Conclusion: A is discharged. C cannot recover from A, and must '
        'proceed against B.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Special Contracts',
    text:
        '(a) R leaves her bag at a shop\'s cloakroom. Staff leave the '
        'cloakroom unlocked and the bag is stolen. Is the shop liable? (b) '
        'An agent transporting fruit for his principal finds it rotting '
        'because of a train delay. He sells it locally without instructions. '
        'Is the sale valid?',
    marks: 5,
    problem: true,
    answer:
        '(a) This is a bailment. Under section 151, a bailee must take '
        'the care of the goods that a person of ordinary prudence would take '
        'of their own goods. Leaving the cloakroom unlocked falls short of '
        'this standard. The shop is liable for the loss. A notice excluding '
        'liability for negligence is unlikely to protect it.\n'
        '(b) Under section 189, an agent has authority in an emergency to '
        'do all acts needed to protect the principal from loss, as a person '
        'of ordinary prudence would do for himself. The fruit would have '
        'spoilt and the principal could not be reached in time. The sale is '
        'valid and binds the principal.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text:
        'A\'s car is stolen and sold by the thief to B, who pays full '
        'price in good faith. B sells it to C. A finds the car with C. Can '
        'A recover it?',
    marks: 4,
    problem: true,
    answer:
        'Provision: Section 27 of the Sale of Goods Act, 1930 states the '
        'rule of nemo dat quod non habet: no one can give a better title '
        'than they have. A buyer from a non-owner gets no better title than '
        'the seller had, subject to limited exceptions (such as mercantile '
        'agents, joint owners and voidable contracts not yet rescinded).\n'
        'Analysis: A thief has no title, so B got none and could pass none '
        'to C. None of the exceptions apply to a thief.\n'
        'Conclusion: A can recover the car from C. C\'s remedy is against B '
        'for breach of the implied condition as to title.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Sale of Goods & Negotiable Instruments',
    text:
        'P draws a cheque for ₹5,000 in favour of Q. Q alters the amount '
        'to ₹50,000 and endorses it to R, who takes it in good faith. Can R '
        'recover ₹50,000 from P?',
    marks: 4,
    problem: true,
    answer:
        'Provision: Under section 87 of the Negotiable Instruments Act, '
        '1881, a material alteration made without the consent of the parties '
        'makes the instrument void against anyone who was a party before the '
        'alteration and did not consent to it.\n'
        'Analysis: Changing the amount is a material alteration, made '
        'without P\'s consent. P was a party before the alteration.\n'
        'Conclusion: The cheque is void against P, and R cannot recover '
        'from P, not even ₹5,000. R can sue Q, who made the alteration and '
        'endorsed it afterwards.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text:
        'M, aged 16, is admitted to the benefits of a partnership with the '
        'consent of all partners. The firm incurs debts. What is M\'s '
        'position now, and what must M do on turning 18?',
    marks: 5,
    problem: true,
    answer:
        'Provision: Section 30 of the Indian Partnership Act, 1932.\n'
        'While a minor:\n'
        '• M can share profits and inspect the accounts.\n'
        '• M\'s share in the firm\'s property and profits is liable for the '
        'firm\'s debts, but M is not personally liable.\n'
        'On reaching majority:\n'
        '• Within 6 months, M must give public notice of the choice to '
        'become, or not become, a partner.\n'
        '• If M gives no notice, M becomes a partner automatically.\n'
        '• If M becomes a partner, M is personally liable for all the '
        'firm\'s acts since admission to benefits.\n'
        '• If M elects not to become a partner, M is not liable for the '
        'firm\'s acts after the date of the public notice.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Partnership & LLP',
    text:
        'X retires from a firm but no public notice of retirement is '
        'given. A supplier who has dealt with the firm before, and does not '
        'know of the retirement, supplies goods on credit. The firm fails '
        'to pay. Can the supplier sue X?',
    marks: 4,
    problem: true,
    answer:
        'Provision: Under section 32(3), a retiring partner and the other '
        'partners remain liable to third parties for acts of the firm that '
        'would have been acts of the firm before retirement, until public '
        'notice of the retirement is given.\n'
        'Analysis: No public notice was given, and the supplier did not know '
        'of the retirement.\n'
        'Conclusion: X is liable to the supplier along with the continuing '
        'partners.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text:
        'A private company has 210 members. 15 are current employees, and '
        '5 are former employees who became members while employed and still '
        'hold shares. Is the company within the membership limit?',
    marks: 4,
    problem: true,
    answer:
        'Provision: Under section 2(68), a private company limits its '
        'members to 200. Present employees who are members, and former '
        'employees who became members while employed and continue after '
        'leaving, are not counted. Joint holders count as one member.\n'
        'Calculation: 210 − 15 − 5 = 190 members.\n'
        'Conclusion: The company is within the limit of 200.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Companies Act, 2013',
    text:
        'A company\'s articles allow the directors to borrow only with a '
        'resolution of the general meeting. The directors borrow from a bank '
        'without that resolution. The bank did not know. Is the company '
        'bound?',
    marks: 4,
    problem: true,
    answer:
        'Rule: The doctrine of indoor management (Royal British Bank v. '
        'Turquand). Outsiders dealing with a company are presumed to know '
        'its public documents, but are entitled to assume that internal '
        'procedures, such as passing a resolution, have been followed.\n'
        'Analysis: The articles allowed borrowing with a resolution. The '
        'bank could not see whether the resolution had been passed, and it '
        'acted in good faith.\n'
        'Conclusion: The company is bound by the loan. The doctrine does '
        'not protect an outsider who knew of the irregularity, was '
        'negligent, or relied on a forged document.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_law',
    chapter: 'Business Ethics',
    text:
        'An accounts executive is asked by her manager to backdate sales '
        'invoices so that this year\'s revenue target is met. What should '
        'she do?',
    marks: 5,
    problem: true,
    answer:
        'Issues: Backdating invoices misstates revenue and profit. It '
        'misleads shareholders, lenders and tax authorities, and may be '
        'fraud. It breaks the principles of integrity and objectivity.\n'
        'Steps she should take:\n'
        '• Politely refuse, and explain that the invoices must show the true '
        'date of the sale.\n'
        '• Keep a written record of the request.\n'
        '• If the pressure continues, raise it with a higher authority, '
        'such as the finance head, audit committee or the company\'s '
        'whistle-blower channel.\n'
        '• Seek advice from her professional body if she is a member.\n'
        'Long-term trust and legal compliance matter more than meeting one '
        'year\'s target.',
  ),
];
