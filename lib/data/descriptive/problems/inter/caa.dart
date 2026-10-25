import '../../../../models/question.dart';

const interCaaProblems = [
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        'Shares of ₹10 are payable ₹3 on application, ₹3 on allotment and '
        '₹4 on call. X, holding 100 shares, fails to pay the call, and his '
        'shares are forfeited. They are reissued as fully paid at ₹8 each. '
        'Pass journal entries and find the amount transferred to capital '
        'reserve.',
    marks: 6,
    problem: true,
    answer:
        'Forfeiture:\n'
        '• Share Capital A/c Dr 1,000 (100 × 10)\n'
        '  To Share Forfeiture A/c 600 (amount paid: 100 × 6)\n'
        '  To Calls in Arrears A/c 400\n'
        'Reissue at ₹8:\n'
        '• Bank A/c Dr 800; Share Forfeiture A/c Dr 200; To Share Capital '
        'A/c 1,000\n'
        'Transfer of the balance:\n'
        '• Share Forfeiture A/c Dr 400 To Capital Reserve A/c 400\n'
        'Capital reserve = 600 forfeited − 200 discount on reissue = ₹400',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        'A company redeems preference shares of ₹2,00,000 at a 10% premium. '
        'It issues equity shares of ₹1,00,000 at par for the purpose. It has '
        'general reserve of ₹1,50,000 and securities premium of ₹30,000. '
        'Find the transfer to Capital Redemption Reserve and pass the main '
        'entries.',
    marks: 6,
    problem: true,
    answer:
        'Transfer to CRR = Nominal value redeemed − Proceeds of fresh '
        'issue = 2,00,000 − 1,00,000 = ₹1,00,000\n'
        'Entries:\n'
        '• Bank A/c Dr 1,00,000 To Equity Share Capital A/c 1,00,000\n'
        '• Preference Share Capital A/c Dr 2,00,000; Premium on Redemption '
        'A/c Dr 20,000; To Preference Shareholders A/c 2,20,000\n'
        '• Securities Premium A/c Dr 20,000 To Premium on Redemption A/c '
        '20,000\n'
        '• General Reserve A/c Dr 1,00,000 To Capital Redemption Reserve A/c '
        '1,00,000\n'
        '• Preference Shareholders A/c Dr 2,20,000 To Bank A/c 2,20,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text:
        'A public company has net profits under section 198 of ₹50 lakh. It '
        'has one managing director and some non-executive directors. Find '
        'the maximum managerial remuneration under section 197, without '
        'special approval.',
    marks: 4,
    problem: true,
    answer:
        '• Overall limit for all directors and the manager: 11% of net '
        'profits = ₹5,50,000\n'
        '• One managing director: 5% = ₹2,50,000 (10% in total if there is '
        'more than one MD or whole-time director)\n'
        '• Non-executive directors, where there is an MD or whole-time '
        'director: 1% = ₹50,000 (3% if there is none)\n'
        'Sitting fees are not included in these limits. The limits can be '
        'exceeded with a special resolution of the shareholders.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text:
        'Under Division I of Schedule III, where is each shown? (a) '
        'securities premium; (b) calls in arrears; (c) provision for '
        'gratuity payable after 3 years; (d) goodwill; (e) trade '
        'receivables; (f) dividend proposed after the balance sheet date; '
        '(g) the part of a term loan repayable within 12 months.',
    marks: 6,
    problem: true,
    answer:
        '(a) Shareholders\' funds – Reserves and surplus.\n'
        '(b) Deducted from subscribed capital under Share capital, shown in '
        'the notes.\n'
        '(c) Non-current liabilities – Long-term provisions.\n'
        '(d) Non-current assets – Property, plant and equipment and '
        'intangible assets – Intangible assets.\n'
        '(e) Current assets – Trade receivables.\n'
        '(f) Not recognised as a liability; disclosed in the notes.\n'
        '(g) Current liabilities – Short-term borrowings, as current '
        'maturities of long-term borrowings.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text:
        'X Ltd takes over Y Ltd, which has 10,000 equity shares of ₹10. For '
        'every 5 shares of Y, X issues 2 shares of ₹10 at ₹15 each, and also '
        'pays ₹2 in cash per Y share. Y\'s assets at agreed values are '
        '₹1,20,000 and liabilities ₹30,000. Find the purchase consideration '
        'and the goodwill or capital reserve under the purchase method.',
    marks: 6,
    problem: true,
    answer:
        'Purchase consideration\n'
        '• Shares: 10,000 ÷ 5 × 2 = 4,000 shares × ₹15 = 60,000\n'
        '• Cash: 10,000 × 2 = 20,000\n'
        '• Total = ₹80,000\n'
        'Net assets taken over = 1,20,000 − 30,000 = ₹90,000\n'
        'Net assets exceed consideration by ₹10,000, so a capital reserve of '
        '₹10,000 arises.\n'
        'X Ltd records share capital 40,000 and securities premium 20,000 '
        'for the shares issued.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text:
        'A Ltd absorbs B Ltd. The value of one A share is ₹40 and of one B '
        'share is ₹30. B has 20,000 shares. Find the exchange ratio and the '
        'number of A shares to be issued.',
    marks: 3,
    problem: true,
    answer:
        '• Each B share is worth 30 ÷ 40 = 0.75 A shares\n'
        '• Exchange ratio = 3 A shares for every 4 B shares\n'
        '• A shares to issue = 20,000 × 3/4 = 15,000 shares\n'
        'Check: 15,000 × 40 = 6,00,000 = 20,000 × 30.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text:
        'Using the indirect method, find cash from operating activities: '
        'net profit before tax ₹2,00,000; depreciation ₹40,000; loss on sale '
        'of machine ₹5,000; interest expense ₹20,000; dividend received '
        '₹8,000; increase in debtors ₹30,000; decrease in inventory ₹10,000; '
        'increase in creditors ₹15,000; income tax paid ₹50,000.',
    marks: 6,
    problem: true,
    answer:
        'Net profit before tax: 2,00,000\n'
        'Adjustments:\n'
        '• Add depreciation: 40,000\n'
        '• Add loss on sale of machine: 5,000\n'
        '• Add interest expense (financing): 20,000\n'
        '• Less dividend received (investing): (8,000)\n'
        'Operating profit before working capital changes: 2,57,000\n'
        '• Less increase in debtors: (30,000)\n'
        '• Add decrease in inventory: 10,000\n'
        '• Add increase in creditors: 15,000\n'
        'Cash generated from operations: 2,52,000\n'
        '• Less income tax paid: (50,000)\n'
        'Net cash from operating activities: ₹2,02,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text:
        'For a non-financial company, find cash from investing activities: '
        'machine bought ₹1,00,000; old machine with book value ₹20,000 sold '
        'at a loss of ₹5,000; investments bought ₹30,000; dividend received '
        '₹8,000; interest received ₹2,000.',
    marks: 4,
    problem: true,
    answer:
        '• Purchase of machine: (1,00,000)\n'
        '• Sale of old machine (20,000 − 5,000): 15,000\n'
        '• Purchase of investments: (30,000)\n'
        '• Dividend received: 8,000\n'
        '• Interest received: 2,000\n'
        'Net cash used in investing activities: ₹(1,05,000)',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text:
        '(a) An auditor is appointed after the year end and could not '
        'attend the inventory count. (b) A major debtor does not reply to '
        'the auditor\'s confirmation request. What should the auditor do in '
        'each case?',
    marks: 5,
    problem: true,
    answer:
        '(a) Under SA 501, if attending the count is impracticable, the '
        'auditor performs alternative procedures, such as:\n'
        '• Counting inventory at a later date and reconciling it back to '
        'the year end using records of receipts and issues.\n'
        '• Testing the inventory records, purchase invoices and sales after '
        'the year end.\n'
        'If enough evidence cannot be obtained, the auditor modifies the '
        'opinion.\n'
        '(b) Under SA 505, for a non-response the auditor performs '
        'alternative procedures, such as:\n'
        '• Checking cash received from the debtor after the year end.\n'
        '• Examining sales invoices, delivery notes and the customer\'s '
        'orders.\n'
        'If the response is essential and alternatives are not enough, the '
        'auditor considers the effect on the opinion.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text:
        'Is each person disqualified from being auditor of XYZ Ltd under '
        'section 141? (a) Mr. A\'s wife holds shares of XYZ Ltd with a face '
        'value of ₹80,000. (b) Mr. B owes XYZ Ltd ₹6,00,000. (c) Mr. C is '
        'a full-time employee of XYZ Ltd\'s director.',
    marks: 5,
    problem: true,
    answer:
        '(a) A relative may hold securities of the company with a face '
        'value up to ₹1,00,000. Holding ₹80,000 is within the limit, so Mr. '
        'A is not disqualified (he must report it).\n'
        '(b) A person indebted to the company for more than ₹5,00,000 is '
        'disqualified. Mr. B owes ₹6,00,000, so he is disqualified.\n'
        '(c) A person in the employment of a director or officer of the '
        'company is disqualified. Mr. C is disqualified.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text:
        'A new non-government company is registered on 1 May. Who '
        'appoints its first auditor, and by when? If the company were '
        'listed, what rotation rules would apply later?',
    marks: 4,
    problem: true,
    answer:
        'First auditor (section 139(6)):\n'
        '• The board must appoint the first auditor within 30 days of '
        'registration, so by 31 May.\n'
        '• If the board fails, the members must appoint one within 90 days '
        'at an extraordinary general meeting.\n'
        '• The first auditor holds office until the end of the first annual '
        'general meeting.\n'
        'Rotation for listed and prescribed companies (section 139(2)):\n'
        '• An individual auditor can serve one term of 5 consecutive years.\n'
        '• An audit firm can serve two terms of 5 consecutive years.\n'
        '• After that, there is a cooling-off period of 5 years.',
  ),
];
