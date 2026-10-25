import '../../../../models/question.dart';

const interCaaMoreDescriptive = [
  // Share Capital & Redemption
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        'A company offers 10,000 shares of ₹10 payable ₹3 on application, '
        '₹4 on allotment and ₹3 on call. Applications are received for '
        '15,000 shares, and allotment is made pro rata to all applicants. '
        'Pass entries up to the receipt of allotment money.',
    marks: 6,
    problem: true,
    answer:
        '• Application money received: Bank A/c Dr 45,000 To Share '
        'Application A/c 45,000 (15,000 × 3)\n'
        '• Transfer on allotment: Share Application A/c Dr 45,000; To Share '
        'Capital A/c 30,000 (10,000 × 3); To Share Allotment A/c 15,000 '
        '(excess)\n'
        '• Allotment due: Share Allotment A/c Dr 40,000 To Share Capital A/c '
        '40,000 (10,000 × 4)\n'
        '• Allotment money received: Bank A/c Dr 25,000 To Share Allotment '
        'A/c 25,000 (40,000 − 15,000)\n'
        'Any excess beyond the allotment due would be adjusted to calls or '
        'refunded.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        'State the conditions for buy-back of shares under section 68 of '
        'the Companies Act, 2013.',
    marks: 5,
    answer:
        '• Authorised by the articles.\n'
        '• Board resolution for up to 10% of paid-up capital and free '
        'reserves; special resolution for more, up to 25%.\n'
        '• Buy-back of equity shares in a year cannot exceed 25% of paid-up '
        'equity capital.\n'
        '• After buy-back, debt must not exceed twice the paid-up capital and '
        'free reserves.\n'
        '• Only fully paid-up shares can be bought back.\n'
        '• Funds may come from free reserves, securities premium, or proceeds '
        'of a different kind of share issue.\n'
        '• Completed within one year of the resolution; no new issue of the '
        'same kind within 6 months.\n'
        '• When bought out of free reserves or premium, an amount equal to '
        'nominal value goes to the Capital Redemption Reserve.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        '1,000 debentures of ₹100 each are issued at ₹95 and redeemable at '
        '₹105 after 5 years. Pass the entry on issue and show how the loss '
        'on issue is treated.',
    marks: 4,
    problem: true,
    answer:
        'Entry on issue (after receipt of cash):\n'
        '• Bank A/c Dr 95,000\n'
        '• Loss on Issue of Debentures A/c Dr 10,000\n'
        '• To Debentures A/c 1,00,000\n'
        '• To Premium on Redemption of Debentures A/c 5,000\n'
        'Loss = discount 5,000 + premium on redemption 5,000 = 10,000.\n'
        'Treatment: written off over the life of the debentures, here ₹2,000 '
        'a year for 5 years, first against securities premium if available, '
        'otherwise to the Statement of Profit and Loss. Premium on '
        'redemption is a liability until redemption.',
  ),

  // Company Financial Statements
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text:
        'Prepare the Equity and Liabilities side of a Balance Sheet under '
        'Division I: equity share capital ₹10,00,000; securities premium '
        '₹2,00,000; general reserve ₹3,00,000; surplus in P&L ₹1,50,000; 10% '
        'debentures ₹5,00,000 (redeemable after 5 years); term loan '
        '₹4,00,000 (₹1,00,000 repayable next year); trade payables ₹2,50,000; '
        'provision for tax ₹80,000; provision for gratuity (long-term) '
        '₹70,000.',
    marks: 8,
    problem: true,
    answer:
        '1. Shareholders\' funds\n'
        '• Share capital: 10,00,000\n'
        '• Reserves and surplus (2,00,000 + 3,00,000 + 1,50,000): 6,50,000\n'
        '• Subtotal: 16,50,000\n'
        '2. Non-current liabilities\n'
        '• Long-term borrowings (debentures 5,00,000 + term loan 3,00,000): '
        '8,00,000\n'
        '• Long-term provisions (gratuity): 70,000\n'
        '• Subtotal: 8,70,000\n'
        '3. Current liabilities\n'
        '• Short-term borrowings (current maturity of term loan): 1,00,000\n'
        '• Trade payables: 2,50,000\n'
        '• Short-term provisions (tax): 80,000\n'
        '• Subtotal: 4,30,000\n'
        'Total equity and liabilities = ₹29,50,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text:
        'A company\'s normal operating cycle is 18 months. Classify each '
        'item as current or non-current: (a) inventory expected to be sold '
        'in 15 months; (b) trade receivables due in 16 months in the normal '
        'course; (c) a loan to an employee repayable over 3 years; (d) a '
        'fixed deposit maturing in 14 months.',
    marks: 4,
    problem: true,
    answer:
        'An asset is current if it is expected to be realised within the '
        'operating cycle, held for trading, or due within 12 months after '
        'the reporting date.\n'
        '(a) Current: realised within the 18-month operating cycle.\n'
        '(b) Current: trade receivables arising in the normal operating '
        'cycle.\n'
        '(c) Non-current: not part of the operating cycle and due beyond 12 '
        'months (the part due within 12 months is current).\n'
        '(d) Non-current: it is not an operating cycle item, and matures '
        'after more than 12 months.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text:
        'What are the general instructions for preparing the Balance Sheet '
        'under Schedule III?',
    marks: 4,
    answer:
        '• Follow the vertical format with the prescribed headings and '
        'sub-headings.\n'
        '• Classify assets and liabilities as current or non-current using '
        'the operating cycle and 12-month rules.\n'
        '• Give figures for the previous year for comparison.\n'
        '• Round off figures as prescribed, based on turnover, and use the '
        'same unit throughout.\n'
        '• Provide details in notes to accounts, such as share capital, '
        'borrowings, PPE and contingent liabilities.\n'
        '• Disclose items such as ageing of trade receivables and payables, '
        'and key ratios, as required.\n'
        '• Comply with accounting standards; where they conflict with '
        'Schedule III, the standards prevail.',
  ),

  // Amalgamation
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text:
        'A Ltd takes over B Ltd (purchase method). Agreed values of B\'s '
        'assets: fixed assets ₹6,00,000; stock ₹2,00,000; debtors ₹1,50,000; '
        'cash ₹50,000. Creditors taken over ₹1,00,000. Purchase consideration '
        'is 80,000 equity shares of ₹10 at ₹12.50. Pass entries in A Ltd\'s '
        'books.',
    marks: 6,
    problem: true,
    answer:
        '• Purchase consideration = 80,000 × 12.50 = ₹10,00,000\n'
        '• Net assets = 10,00,000 − 1,00,000 = 9,00,000, so goodwill = '
        '₹1,00,000\n'
        'Entries:\n'
        '• Business Purchase A/c Dr 10,00,000 To Liquidator of B Ltd A/c '
        '10,00,000\n'
        '• Fixed Assets A/c Dr 6,00,000; Stock A/c Dr 2,00,000; Debtors A/c '
        'Dr 1,50,000; Cash A/c Dr 50,000; Goodwill A/c Dr 1,00,000; To '
        'Creditors A/c 1,00,000; To Business Purchase A/c 10,00,000\n'
        '• Liquidator of B Ltd A/c Dr 10,00,000; To Equity Share Capital A/c '
        '8,00,000; To Securities Premium A/c 2,00,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text:
        'X Ltd has net assets of ₹20,00,000 and 1,00,000 shares. Y Ltd has '
        'net assets of ₹9,00,000 and 60,000 shares. X Ltd absorbs Y Ltd, '
        'issuing shares on the basis of intrinsic values. Find the exchange '
        'ratio and the shares issued.',
    marks: 4,
    problem: true,
    answer:
        '• Intrinsic value of X share = 20,00,000 ÷ 1,00,000 = ₹20\n'
        '• Intrinsic value of Y share = 9,00,000 ÷ 60,000 = ₹15\n'
        '• Exchange ratio = 15 ÷ 20 = 0.75, so 3 X shares for every 4 Y '
        'shares\n'
        '• Shares issued = 60,000 × 3/4 = 45,000 X shares\n'
        'Check: 45,000 × 20 = ₹9,00,000, equal to Y\'s net assets.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text:
        'Explain the methods of calculating purchase consideration in an '
        'amalgamation.',
    marks: 4,
    answer:
        '• Lump sum method: a single amount is agreed.\n'
        '• Net payment method: total of payments in shares, cash and other '
        'securities made to the transferor\'s shareholders. Payments to '
        'creditors are excluded under AS 14.\n'
        '• Net assets method: agreed value of assets taken over less agreed '
        'value of liabilities taken over.\n'
        '• Intrinsic value (share exchange) method: shares are issued on the '
        'ratio of intrinsic values of the two companies\' shares.\n'
        'Under AS 14, the net payment basis defines purchase consideration '
        'for accounting.',
  ),

  // Cash Flow Statement
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text:
        'Prepare a cash flow statement (indirect method): profit before tax '
        '₹1,50,000; depreciation ₹30,000; increase in debtors ₹20,000; '
        'decrease in creditors ₹10,000; tax paid ₹40,000; equipment bought '
        '₹1,00,000; shares issued ₹80,000; dividend paid ₹30,000; opening '
        'cash ₹25,000.',
    marks: 8,
    problem: true,
    answer:
        'A. Operating activities\n'
        '• Profit before tax 1,50,000 + depreciation 30,000 = 1,80,000\n'
        '• Less increase in debtors (20,000) and decrease in creditors '
        '(10,000)\n'
        '• Cash generated from operations = 1,50,000\n'
        '• Less tax paid (40,000)\n'
        '• Net cash from operating activities = 1,10,000\n'
        'B. Investing activities\n'
        '• Purchase of equipment (1,00,000)\n'
        'C. Financing activities\n'
        '• Issue of shares 80,000 − dividend paid 30,000 = 50,000\n'
        'Net increase in cash = 1,10,000 − 1,00,000 + 50,000 = 60,000\n'
        'Closing cash = 25,000 + 60,000 = ₹85,000',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text:
        'Machinery (net) was ₹5,00,000 at the start and ₹6,20,000 at the '
        'end. Depreciation for the year was ₹80,000. A machine with a book '
        'value of ₹40,000 was sold for ₹35,000. Find the machinery bought and '
        'the net cash from investing activities.',
    marks: 5,
    problem: true,
    answer:
        'Machinery Account (net)\n'
        '• Closing 6,20,000 + depreciation 80,000 + book value of machine '
        'sold 40,000 = 7,40,000\n'
        '• Less opening 5,00,000\n'
        '• Machinery bought = ₹2,40,000\n'
        'Investing activities:\n'
        '• Purchase of machinery: (2,40,000)\n'
        '• Sale of machinery: 35,000\n'
        '• Net cash used = ₹(2,05,000)\n'
        'The loss on sale of ₹5,000 is added back under operating activities.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text:
        'Distinguish between the direct and indirect methods of reporting '
        'cash flows from operating activities.',
    marks: 4,
    answer:
        '• Direct method: shows major classes of gross cash receipts and '
        'payments, such as cash from customers and cash paid to suppliers '
        'and employees.\n'
        '• Indirect method: starts from net profit and adjusts for non-cash '
        'items (depreciation, provisions), non-operating items (profit on '
        'sale of assets, interest) and changes in working capital.\n'
        '• Information: the direct method shows where cash came from and went '
        'to; the indirect method shows why profit differs from operating '
        'cash flow.\n'
        '• Use: AS 3 encourages the direct method, but the indirect method is '
        'more common in practice.\n'
        'Both give the same net cash flow from operations.',
  ),

  // Auditing Concepts & Evidence
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text: 'Explain the components of audit risk.',
    marks: 5,
    answer:
        'Audit risk is the risk that the auditor gives an inappropriate '
        'opinion when the financial statements are materially misstated.\n'
        '• Inherent risk: the susceptibility of an assertion to misstatement '
        'before considering controls, for example complex estimates or cash '
        'transactions.\n'
        '• Control risk: the risk that internal controls will not prevent or '
        'detect a misstatement.\n'
        '• Detection risk: the risk that the auditor\'s procedures will not '
        'detect a misstatement.\n'
        'Audit risk = Inherent risk × Control risk × Detection risk. Since '
        'the auditor cannot change inherent and control risk, he reduces '
        'detection risk by doing more or better procedures when the other '
        'two are high.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text:
        'Distinguish between internal control, internal check and internal '
        'audit.',
    marks: 5,
    answer:
        '• Internal control: the whole system of policies and procedures '
        'set up by management to run the business efficiently, safeguard '
        'assets, prevent and detect fraud, and ensure accurate records.\n'
        '• Internal check: part of internal control. Duties are arranged so '
        'that one person\'s work is automatically checked by another, such as '
        'separating the person who receives cash from the one who records '
        'it.\n'
        '• Internal audit: an independent review of operations and controls '
        'by the entity\'s own staff or an outside firm, reporting to '
        'management or the audit committee.\n'
        'The statutory auditor evaluates internal control and may rely on '
        'internal audit work under SA 610.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text:
        'What should an auditor check when vouching (a) the purchase of '
        'machinery, and (b) salaries paid?',
    marks: 5,
    problem: true,
    answer:
        '(a) Purchase of machinery:\n'
        '• Board approval and capital budget sanction.\n'
        '• Supplier\'s invoice, purchase order and agreement.\n'
        '• Receipt and installation report, and its physical existence.\n'
        '• Correct capitalisation, including freight and installation, and '
        'exclusion of recoverable GST.\n'
        '• Entry in the fixed asset register and correct depreciation.\n'
        '(b) Salaries:\n'
        '• Payroll approved by an authorised official, with attendance '
        'records.\n'
        '• Appointment letters and pay rates for employees.\n'
        '• Deductions such as TDS, PF and ESI, and their deposit.\n'
        '• Bank transfer records matching the payroll.\n'
        '• Checks for dummy employees and joining or leaving dates.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text:
        'What is audit documentation? State its purpose and contents under '
        'SA 230.',
    marks: 4,
    answer:
        'Audit documentation is the record of procedures performed, '
        'evidence obtained and conclusions reached (working papers).\n'
        'Purpose:\n'
        '• Supports the auditor\'s opinion.\n'
        '• Helps plan and perform the audit, and supervise and review work.\n'
        '• Shows compliance with Standards on Auditing.\n'
        '• Helps in quality reviews and future audits.\n'
        'Contents: audit plan, risk assessment, analyses, confirmations, '
        'correspondence, checklists and summaries of significant matters. '
        'The working papers belong to the auditor and are kept for at least '
        '7 years.',
  ),

  // Audit Reports & Company Auditors
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text:
        'State the type of audit opinion in each case: (a) inventory is '
        'overstated by a material, but not pervasive, amount; (b) a material '
        'uncertainty about going concern is adequately disclosed; (c) the '
        'auditor cannot obtain evidence for 60% of total assets; (d) a major '
        'subsidiary is wrongly not consolidated, making the statements '
        'misleading as a whole.',
    marks: 5,
    problem: true,
    answer:
        '(a) Qualified opinion ("except for"): material but not pervasive '
        'misstatement (SA 705).\n'
        '(b) Unmodified opinion, with a separate section headed "Material '
        'Uncertainty Related to Going Concern" (SA 570).\n'
        '(c) Disclaimer of opinion: inability to obtain evidence where '
        'possible effects are material and pervasive.\n'
        '(d) Adverse opinion: misstatement that is material and pervasive.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text:
        'Distinguish between Key Audit Matters and an Emphasis of Matter '
        'paragraph.',
    marks: 4,
    answer:
        '• Standard: Key Audit Matters are under SA 701; Emphasis of '
        'Matter is under SA 706.\n'
        '• Applicability: KAMs are required for listed entities (and where '
        'law requires); EOM can be used for any entity.\n'
        '• Nature: KAMs are the matters of most significance in the audit, '
        'chosen from those discussed with those charged with governance; EOM '
        'draws attention to a matter already disclosed that is fundamental '
        'to users\' understanding.\n'
        '• Content: KAMs explain why the matter was significant and how it '
        'was addressed; EOM only refers to the disclosure.\n'
        'Neither modifies the audit opinion.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text:
        'State the main powers and duties of a company auditor under '
        'section 143 of the Companies Act, 2013.',
    marks: 5,
    answer:
        'Powers:\n'
        '• Right of access at all times to the books, accounts and vouchers.\n'
        '• Right to obtain information and explanations from officers.\n'
        '• Right to access records of subsidiaries for consolidation.\n'
        'Duties:\n'
        '• Inquire into matters such as loans and advances, book entries, '
        'and whether personal expenses are charged to revenue.\n'
        '• Report to members whether the financial statements give a true and '
        'fair view.\n'
        '• Report on matters such as proper books of account, adequacy of '
        'internal financial controls, and compliance with accounting '
        'standards.\n'
        '• Comply with Standards on Auditing.\n'
        '• Report fraud of ₹1 crore or more to the Central Government.',
  ),
];
