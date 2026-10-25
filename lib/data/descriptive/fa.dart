import '../../models/question.dart';

const faDescriptive = [
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Accounting Concepts & Principles',
    text: 'Explain the going concern, consistency and prudence concepts.',
    marks: 5,
    answer:
        '• Going concern: the business is assumed to continue operating '
        'for the foreseeable future, with no intention or need to close down. '
        'This is why assets are shown at cost less depreciation rather than '
        'at what they would fetch in a forced sale.\n'
        '• Consistency: the same accounting policies are followed from one '
        'period to the next, so that results can be compared. A change is '
        'made only when required by law or a standard, or when it gives a '
        'fairer view, and its effect is disclosed.\n'
        '• Prudence (conservatism): expected losses are provided for, but '
        'expected profits are not recognised until they are realised. For '
        'example, inventory is valued at the lower of cost and net '
        'realisable value.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Accounting Process & Rectification of Errors',
    text:
        'Explain the types of errors in accounting. Which of them do not '
        'affect the agreement of the trial balance?',
    marks: 5,
    answer:
        '• Errors of omission: a transaction is left out completely, or '
        'only partly recorded.\n'
        '• Errors of commission: wrong amount, wrong account of the right '
        'type, wrong totalling, or wrong posting.\n'
        '• Errors of principle: a transaction is recorded against an '
        'accounting principle, such as treating capital expenditure as '
        'revenue expenditure.\n'
        '• Compensating errors: two or more errors cancel each other out.\n'
        'Errors that do not affect the trial balance: complete omission, '
        'errors of principle, compensating errors, recording a wrong amount '
        'in the original book, and posting to the correct side of a wrong '
        'account. Errors that affect only one side, such as a wrong total or '
        'a one-sided posting, make the trial balance disagree, and the '
        'difference is kept in a Suspense Account until the errors are found.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Bank Reconciliation Statement',
    text:
        'What is a Bank Reconciliation Statement? State the reasons for the '
        'difference between the cash book and pass book balances.',
    marks: 5,
    answer:
        'A Bank Reconciliation Statement is prepared on a given date to '
        'explain the difference between the bank balance in the cash book '
        'and the balance in the pass book (bank statement).\n'
        'Reasons for the difference:\n'
        '• Cheques issued but not yet presented for payment.\n'
        '• Cheques deposited but not yet collected and credited by the bank.\n'
        '• Bank charges and interest on overdraft debited by the bank but '
        'not yet entered in the cash book.\n'
        '• Interest and dividends collected and credited by the bank, not yet '
        'entered in the cash book.\n'
        '• Direct deposits by customers and direct payments by the bank under '
        'standing instructions.\n'
        '• Cheques dishonoured.\n'
        '• Errors in the cash book or the pass book.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Final Accounts',
    text:
        'Distinguish between capital expenditure and revenue expenditure, '
        'with two examples of each.',
    marks: 4,
    answer:
        '• Purpose: capital expenditure acquires or improves a long-term '
        'asset, or increases earning capacity; revenue expenditure maintains '
        'the business day to day.\n'
        '• Benefit: capital expenditure benefits several years; revenue '
        'expenditure benefits only the current year.\n'
        '• Treatment: capital expenditure is shown as an asset in the Balance '
        'Sheet and depreciated; revenue expenditure is charged to the '
        'Trading or Profit & Loss Account.\n'
        '• Recurrence: capital expenditure is usually non-recurring; revenue '
        'expenditure is usually recurring.\n'
        '• Capital examples: purchase of machinery; cost of installing it.\n'
        '• Revenue examples: wages and salaries; repairs to machinery.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Depreciation',
    text:
        'Distinguish between the straight line method and the written down '
        'value method of depreciation.',
    marks: 4,
    answer:
        '• Base: SLM charges depreciation on the original cost; WDV '
        'charges it on the book value at the start of each year.\n'
        '• Amount: under SLM the charge is the same every year; under WDV it '
        'falls each year.\n'
        '• Book value: under SLM it can be reduced to zero or to scrap value; '
        'under WDV it never becomes zero.\n'
        '• Total charge: under SLM, depreciation plus repairs rises over the '
        'years as repairs increase; under WDV the total stays more even, '
        'since falling depreciation offsets rising repairs.\n'
        '• Suitability: SLM suits assets such as leases and patents that lose '
        'value evenly; WDV suits plant and machinery that need more repairs '
        'as they age.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Bills of Exchange',
    text:
        'What is meant by dishonour of a bill of exchange? What are noting '
        'charges, and who bears them?',
    marks: 4,
    answer:
        'A bill is dishonoured when the drawee (acceptor) fails to pay it '
        'on the due date. A bill may also be dishonoured by non-acceptance.\n'
        'To get official proof of dishonour, the holder can have the bill '
        'noted by a Notary Public, who records the fact, date and reason for '
        'dishonour. The fee paid to the Notary is called noting charges.\n'
        'Noting charges are paid first by the holder, but are finally borne '
        'by the acceptor, since the dishonour is caused by them. On '
        'dishonour, the acceptor\'s account is debited with the bill amount '
        'plus the noting charges.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Consignment',
    text: 'Distinguish between consignment and sale.',
    marks: 4,
    answer:
        '• Ownership: in a consignment, ownership stays with the '
        'consignor until the consignee sells the goods; in a sale, it passes '
        'to the buyer.\n'
        '• Relationship: consignor and consignee are principal and agent; '
        'seller and buyer are two independent parties.\n'
        '• Risk: in a consignment, the risk of loss stays with the consignor; '
        'in a sale, it passes to the buyer with ownership.\n'
        '• Unsold goods: the consignee can return unsold goods; in a sale, '
        'goods cannot usually be returned.\n'
        '• Reporting: the consignee sends an Account Sales to the consignor; '
        'no such statement is sent in a sale.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Partnership Accounts',
    text:
        'In the absence of a partnership deed, what rules of the Indian '
        'Partnership Act, 1932 apply to the accounts of partners?',
    marks: 5,
    answer:
        '• Profits and losses are shared equally, whatever the capital '
        'contributed.\n'
        '• No interest is allowed on partners\' capital.\n'
        '• No interest is charged on partners\' drawings.\n'
        '• No partner is entitled to a salary, commission or other '
        'remuneration for taking part in the business.\n'
        '• A partner who advances a loan to the firm beyond the agreed '
        'capital gets interest on it at 6% per annum.\n'
        'These rules apply only when the partners have not agreed otherwise.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Not-for-Profit Organisations',
    text:
        'Distinguish between a Receipts and Payments Account and an Income '
        'and Expenditure Account.',
    marks: 5,
    answer:
        '• Nature: a Receipts and Payments Account is a summary of the '
        'cash book; an Income and Expenditure Account is like a Profit & Loss '
        'Account.\n'
        '• Basis: the first is on a cash basis; the second on an accrual '
        'basis.\n'
        '• Items: the first records all receipts and payments, capital or '
        'revenue; the second records only revenue items.\n'
        '• Period: the first includes amounts for past, current and future '
        'periods; the second includes only amounts for the current period.\n'
        '• Balances: the first starts and ends with cash and bank balances; '
        'the second ends with a surplus or deficit, which is added to or '
        'deducted from the capital fund.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Single Entry System',
    text: 'Distinguish between a Statement of Affairs and a Balance Sheet.',
    marks: 4,
    answer:
        '• Records: a Statement of Affairs is prepared from incomplete '
        'records; a Balance Sheet from complete double-entry records.\n'
        '• Accuracy: in a Statement of Affairs, many figures are estimates; '
        'a Balance Sheet is based on ledger balances.\n'
        '• Purpose: a Statement of Affairs is mainly used to find capital at '
        'the start or end of a period, so profit can be worked out; a Balance '
        'Sheet shows the financial position.\n'
        '• Errors and omissions: they are hard to find from a Statement of '
        'Affairs; a Balance Sheet is checked through the trial balance.',
  ),
  DescriptiveQuestion(
    subjectId: 'fa',
    chapter: 'Ratio Analysis',
    text:
        'A company has current assets of ₹4,00,000, including inventory of '
        '₹1,50,000 and prepaid expenses of ₹10,000. Current liabilities are '
        '₹2,00,000. Calculate the current ratio and quick ratio, and explain '
        'what they show.',
    marks: 5,
    answer:
        '• Current ratio = Current assets ÷ Current liabilities = '
        '4,00,000 ÷ 2,00,000 = 2 : 1\n'
        '• Quick assets = 4,00,000 − 1,50,000 − 10,000 = ₹2,40,000\n'
        '• Quick ratio = Quick assets ÷ Current liabilities = 2,40,000 ÷ '
        '2,00,000 = 1.2 : 1\n'
        'The current ratio shows whether the business can meet its short-term '
        'obligations from current assets; 2 : 1 is often taken as a '
        'comfortable level. The quick ratio is a stricter test that excludes '
        'inventory and prepaid expenses, which cannot quickly be turned into '
        'cash; 1 : 1 is the usual benchmark. Both ratios here are '
        'satisfactory.',
    problem: true,
  ),
];
