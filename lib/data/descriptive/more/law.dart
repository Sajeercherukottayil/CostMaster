import '../../../models/question.dart';

const lawMoreDescriptive = [
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text:
        'What is a quasi-contract? Explain the cases covered by sections 68 '
        'to 72 of the Indian Contract Act, 1872.',
    marks: 5,
    answer:
        'A quasi-contract is not a real contract. The law creates an '
        'obligation, similar to a contract, to prevent one person being '
        'unjustly enriched at another\'s expense.\n'
        '• Section 68: a person who supplies necessaries to someone '
        'incapable of contracting (such as a minor) can recover their price '
        'from that person\'s property.\n'
        '• Section 69: a person who pays money that another is bound by law '
        'to pay, and who is interested in the payment, can recover it.\n'
        '• Section 70: a person who lawfully does something for another, not '
        'intending to do it free, and the other enjoys the benefit, must be '
        'compensated.\n'
        '• Section 71: a finder of goods has the responsibilities of a '
        'bailee.\n'
        '• Section 72: a person who receives money or goods by mistake or '
        'under coercion must repay or return them.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text:
        'S sells goods to B on one month\'s credit, but the goods are still '
        'in S\'s warehouse. Before the month is over, B becomes insolvent. '
        'Can S refuse to deliver the goods?',
    marks: 4,
    problem: true,
    answer:
        'Provision: Under section 47, an unpaid seller in possession of '
        'the goods has a lien on them (a right to retain them until paid) '
        'where: (a) the goods were sold without credit; (b) the goods were '
        'sold on credit and the credit period has expired; or (c) the buyer '
        'becomes insolvent.\n'
        'Analysis: The credit period has not expired, but B has become '
        'insolvent, so case (c) applies. S still has possession.\n'
        'Conclusion: S can exercise lien and refuse delivery until paid, '
        'even though the goods were sold on credit.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text: 'Explain the types of crossing of a cheque.',
    marks: 5,
    answer:
        'Crossing is a direction to the paying banker to pay the cheque '
        'only through a bank, not in cash at the counter. It makes payment '
        'safer.\n'
        '• General crossing (section 123): two parallel transverse lines, '
        'with or without words such as "& Co." The cheque is paid only to a '
        'banker.\n'
        '• Special crossing (section 124): the name of a particular banker '
        'is written across the cheque. It is paid only to that banker.\n'
        '• "Not negotiable" crossing (section 130): the cheque can still be '
        'transferred, but a transferee gets no better title than the '
        'transferor had.\n'
        '• "Account payee" crossing: an instruction to the collecting banker '
        'to credit the amount only to the payee\'s account.\n'
        'A crossing can be made by the drawer, a holder or a banker, as set '
        'out in section 125.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text:
        'Find the due date of: (a) a bill dated 31 January 2026, payable '
        'one month after date; (b) a bill payable 60 days after sight, '
        'accepted on 10 March 2026. What happens if a due date is a public '
        'holiday?',
    marks: 5,
    problem: true,
    answer:
        '(a) One month after 31 January would be 31 February, which does '
        'not exist. Under section 23, the last day of the month is taken: '
        '28 February 2026. Adding 3 days of grace, the due date is 3 March '
        '2026.\n'
        '(b) Under section 24, the day of acceptance is excluded. Counting '
        '60 days from 11 March: March 21 days, April 30 days (51), and 9 '
        'days in May (60), giving 9 May. Adding 3 days of grace, the due '
        'date is 12 May 2026.\n'
        'Public holiday: under section 25, if the due date is a public '
        'holiday, the instrument is payable on the preceding business day.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Business Communication',
    text: 'Distinguish between formal and informal communication.',
    marks: 4,
    answer:
        '• Channel: formal communication follows the official chain of '
        'command; informal communication (the grapevine) moves freely, '
        'without fixed paths.\n'
        '• Nature: formal is official and usually recorded; informal is '
        'personal and usually oral.\n'
        '• Speed: formal is slower, because it passes through levels; '
        'informal is fast.\n'
        '• Reliability: formal is accurate and authorised; informal can '
        'distort messages and spread rumours.\n'
        '• Examples: formal includes circulars, reports and minutes; informal '
        'includes chats over tea and messages between friends at work.\n'
        'Managers can use the grapevine to sense employee feelings, while '
        'giving clear formal information to stop rumours.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Business Communication',
    text:
        'Why is listening important in business? How can a person listen '
        'actively?',
    marks: 5,
    answer:
        'Importance:\n'
        '• It helps understand customers\' needs and complaints correctly.\n'
        '• It reduces mistakes in following instructions.\n'
        '• It builds trust and good relations with colleagues.\n'
        '• It helps managers collect ideas and spot problems early.\n'
        'Active listening:\n'
        '• Give full attention, and remove distractions such as phones.\n'
        '• Keep eye contact and show interest through nods or short '
        'responses.\n'
        '• Do not interrupt; let the speaker finish.\n'
        '• Ask questions to clarify, and summarise to confirm understanding.\n'
        '• Keep an open mind, and avoid judging before hearing the whole '
        'message.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Business Communication',
    text:
        'As office manager, draft a memo informing all staff that the '
        'office will be closed on Saturday for electrical maintenance.',
    marks: 4,
    problem: true,
    answer:
        'MEMORANDUM\n'
        'To: All staff\n'
        'From: Office Manager\n'
        'Date: 20 October 2026\n'
        'Subject: Office closed on Saturday, 24 October\n'
        'The office will be closed on Saturday, 24 October, for electrical '
        'maintenance. Power will be off for the whole day.\n'
        'Please shut down your computers and unplug personal devices before '
        'leaving on Friday. Staff who need to work that day may work from '
        'home with their manager\'s approval.\n'
        'The office will reopen as usual on Monday, 26 October. Please '
        'contact me on extension 210 with any questions.\n'
        'Points to note: a memo is internal, so it has no salutation or '
        'complimentary close; the subject line states the main point; the '
        'body is short and says exactly what staff must do.',
  ),
];
