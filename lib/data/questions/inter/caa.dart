import '../../../models/question.dart';

const interCaaQuestions = [
  // Corporate accounting
  Question(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        '100 shares of ₹10 each, ₹8 called up, are forfeited. The shareholder '
        'had paid ₹5 per share and failed to pay the last call of ₹3. The amount '
        'credited to Share Forfeiture Account is:',
    options: ['₹800', '₹500', '₹300', '₹1,000'],
    answerIndex: 1,
    explanation:
        'Share Forfeiture Account is credited with the amount actually '
        'received on the forfeited shares: 100 × ₹5 = ₹500.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        'Those 100 forfeited shares (forfeiture balance ₹500) are reissued as '
        '₹8 paid up for ₹7 per share. The amount transferred to Capital Reserve is:',
    options: ['₹500', '₹100', '₹700', '₹400'],
    answerIndex: 3,
    explanation:
        'Discount on reissue = 100 × (8 − 7) = ₹100, met from forfeiture. '
        'Balance 500 − 100 = ₹400 goes to Capital Reserve.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        'Under Section 52 of the Companies Act, 2013, Securities Premium '
        'cannot be used for:',
    options: [
      'Issuing fully paid bonus shares',
      'Writing off preliminary expenses',
      'Paying dividend to shareholders',
      'Buy-back of its own shares',
    ],
    answerIndex: 2,
    explanation:
        'Securities premium may be used only for the purposes listed in '
        'Section 52(2). Paying dividends is not one of them.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        'When preference shares are redeemed out of profits, an amount equal '
        'to the nominal value redeemed is transferred to:',
    options: [
      'General Reserve',
      'Capital Redemption Reserve',
      'Securities Premium',
      'Capital Reserve',
    ],
    answerIndex: 1,
    explanation:
        'Section 55 requires a transfer to Capital Redemption Reserve so '
        'that the capital base is maintained.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        'Under Section 39 of the Companies Act, 2013, the application money '
        'payable on shares must be at least:',
    options: [
      '10% of the issue price',
      '50% of the nominal value',
      '25% of the nominal value',
      '5% of the nominal value of the shares',
    ],
    answerIndex: 3,
    explanation:
        'Section 39(2) requires application money of not less than 5% of '
        'the nominal amount of the share (or a higher amount specified by '
        'SEBI).',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        'Under Section 55, preference shares (other than for infrastructure '
        'projects) must be redeemed within:',
    options: [
      '10 years',
      '30 years',
      '5 years',
      '20 years from the date of issue',
    ],
    answerIndex: 3,
    explanation:
        'Preference shares must be redeemable within 20 years; companies in '
        'infrastructure projects may issue them for up to 30 years.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        'Under section 53 of the Companies Act, 2013, a company generally '
        'cannot issue shares at a discount, except:',
    options: [
      'Bonus shares',
      'Preference shares',
      'Rights shares',
      'Sweat equity shares (and shares issued to creditors in specified debt conversions)',
    ],
    answerIndex: 3,
    explanation: 'Shares issued at a discount in other cases are void.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        'Preference shares of ₹2,00,000 are redeemed and a fresh issue of '
        '₹50,000 equity shares is made for the purpose. The amount to be '
        'transferred to the Capital Redemption Reserve is:',
    options: ['₹2,50,000', '₹50,000', '₹1,50,000', '₹2,00,000'],
    answerIndex: 2,
    explanation:
        'CRR = Nominal value redeemed − Proceeds of fresh issue = 2,00,000 '
        '− 50,000 = ₹1,50,000.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        'Under section 68, with a special resolution, a company may buy '
        'back its shares up to:',
    options: [
      '100% of paid-up capital',
      '10% of paid-up capital',
      '50% of free reserves',
      '25% of its paid-up capital and free reserves',
    ],
    answerIndex: 3,
    explanation: 'With only a Board resolution, the limit is 10%.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Share Capital & Redemption',
    text:
        'On reissue of forfeited shares, the balance of the Forfeited '
        'Shares Account is transferred to:',
    options: [
      'Securities Premium',
      'Profit and Loss Account',
      'General Reserve',
      'Capital Reserve',
    ],
    answerIndex: 3,
    explanation: 'The gain on forfeited shares is capital in nature.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text:
        'In the Balance Sheet under Schedule III (Division I), Securities '
        'Premium is shown under:',
    options: [
      'Share capital',
      'Reserves and surplus',
      'Non-current liabilities',
      'Other current liabilities',
    ],
    answerIndex: 1,
    explanation:
        'Securities premium is a component of Reserves and Surplus '
        'within Shareholders\' Funds.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text:
        'Under Schedule III, a liability expected to be settled within 12 '
        'months of the reporting date is classified as:',
    options: [
      'A non-current liability',
      'Shareholders\' funds',
      'A current liability',
      'A contingent liability',
    ],
    answerIndex: 2,
    explanation:
        'Liabilities due within 12 months (or the operating cycle) are '
        'current liabilities.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text:
        'Under revised AS 4, dividends proposed after the balance sheet '
        'date are:',
    options: [
      'Shown as a provision',
      'Shown as a current liability',
      'Deducted from share capital',
      'Disclosed in the notes, not recognised as a liability',
    ],
    answerIndex: 3,
    explanation:
        'Proposed dividend is not a present obligation at the balance sheet '
        'date, so it is only disclosed.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text: 'Under Schedule III, Capital Work-in-Progress is shown under:',
    options: [
      'Shareholders\' funds',
      'Current assets',
      'Non-current assets',
      'Current liabilities',
    ],
    answerIndex: 2,
    explanation:
        'Capital work-in-progress is shown under non-current assets, '
        'alongside property, plant and equipment.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text: 'Calls in arrears are shown in the Balance Sheet as:',
    options: [
      'A current asset',
      'A reserve',
      'A deduction from called-up share capital',
      'A current liability',
    ],
    answerIndex: 2,
    explanation:
        'In the notes to share capital, calls unpaid are deducted from '
        'called-up capital to show paid-up capital.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text:
        'Under Schedule III, the Statement of Profit and Loss is presented '
        'in:',
    options: [
      'Any form chosen by the company',
      'Horizontal (T) form',
      'Account form with two sides',
      'Vertical form',
    ],
    answerIndex: 3,
    explanation:
        'Schedule III prescribes a vertical format for both the Balance '
        'Sheet and the Statement of Profit and Loss.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text: 'Under Schedule III, trade receivables are disclosed with:',
    options: [
      'No breakdown',
      'Only the names of customers',
      'Only the largest customer',
      'An ageing schedule showing how long amounts have been outstanding',
    ],
    answerIndex: 3,
    explanation:
        'The amended Schedule III requires an ageing schedule for trade '
        'receivables.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text: 'Provision for income tax for the current year is shown under:',
    options: [
      'Non-current assets',
      'Long-term borrowings',
      'Short-term provisions (current liabilities)',
      'Reserves and surplus',
    ],
    answerIndex: 2,
    explanation: 'It is expected to be settled within 12 months.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text: 'Unpaid dividend is shown in the Balance Sheet under:',
    options: [
      'Trade payables',
      'Other current liabilities',
      'Share capital',
      'Reserves and surplus',
    ],
    answerIndex: 1,
    explanation: 'It is dividend declared but not yet claimed by shareholders.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Company Financial Statements',
    text:
        'Under Schedule III, interest expense is shown in the Statement of '
        'Profit and Loss under:',
    options: [
      'Cost of materials consumed',
      'Finance costs',
      'Employee benefit expenses',
      'Other expenses',
    ],
    answerIndex: 1,
    explanation: 'Finance costs include interest and other borrowing costs.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text:
        'Under AS 14, an amalgamation in the nature of merger is accounted '
        'for using the:',
    options: [
      'Purchase method',
      'Acquisition method',
      'Equity method',
      'Pooling of interests method',
    ],
    answerIndex: 3,
    explanation:
        'AS 14 uses the pooling of interests method for mergers and the '
        'purchase method for amalgamations in the nature of purchase.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text:
        'The purchase consideration is 1,000 shares of ₹10 each issued at '
        '₹12 per share, plus ₹5,000 in cash. The purchase consideration is:',
    options: ['₹10,000', '₹17,000', '₹12,000', '₹15,000'],
    answerIndex: 1,
    explanation: '1,000 × ₹12 = ₹12,000 in shares + ₹5,000 cash = ₹17,000.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text:
        'In an amalgamation in the nature of purchase, the excess of '
        'purchase consideration over net assets taken over is recorded as:',
    options: [
      'Capital reserve',
      'General reserve',
      'Goodwill',
      'Securities premium',
    ],
    answerIndex: 2,
    explanation:
        'Paying more than the fair value of net assets acquired creates '
        'goodwill.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text:
        'Under the pooling of interests method, the assets and liabilities '
        'of the transferor company are recorded at their:',
    options: [
      'Realisable values',
      'Book values',
      'Fair values',
      'Market values',
    ],
    answerIndex: 1,
    explanation:
        'Pooling combines the businesses as they stand, so book values '
        '(with uniform accounting policies) are used.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text:
        'Under the purchase method, the excess of net assets taken over the '
        'purchase consideration is credited to:',
    options: [
      'Profit and Loss Account',
      'Capital reserve',
      'Share capital',
      'Goodwill',
    ],
    answerIndex: 1,
    explanation:
        'A gain on bargain purchase is capital in nature and is credited to '
        'capital reserve.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text:
        'When an existing company takes over the business of another '
        'existing company, it is called:',
    options: [
      'Absorption',
      'Amalgamation by forming a new company',
      'External reconstruction',
      'Liquidation',
    ],
    answerIndex: 0,
    explanation:
        'In absorption, no new company is formed; the transferee company '
        'absorbs the transferor.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text:
        'Under the purchase method, statutory reserves of the transferor '
        'company are maintained in the transferee\'s books by:',
    options: [
      'Crediting them and debiting an Amalgamation Adjustment Reserve',
      'Ignoring them',
      'Debiting Goodwill',
      'Crediting General Reserve',
    ],
    answerIndex: 0,
    explanation:
        'This preserves statutory reserves, such as an investment allowance '
        'reserve, until they are no longer required.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text:
        'Under the net assets method, assets taken over are ₹5,00,000 and '
        'liabilities taken over ₹1,50,000. The purchase consideration is:',
    options: ['₹5,00,000', '₹1,50,000', '₹3,50,000', '₹6,50,000'],
    answerIndex: 2,
    explanation:
        'Purchase consideration = Assets taken over − Liabilities taken '
        'over = ₹3,50,000.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text:
        'Under AS 14, an amalgamation in the nature of merger requires that '
        'shareholders holding at least what share of the transferor\'s '
        'equity shares become shareholders of the transferee?',
    options: ['90%', '51%', '100%', '75%'],
    answerIndex: 0,
    explanation:
        'Other conditions include all assets and liabilities passing to the '
        'transferee.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Amalgamation',
    text: 'External reconstruction means:',
    options: [
      'A new company is formed to take over an existing company with substantially the same shareholders',
      'Change in accounting policy',
      'Reduction of share capital',
      'Issue of bonus shares',
    ],
    answerIndex: 0,
    explanation:
        'The old company is liquidated and its business continues under the '
        'new company.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text:
        'Under AS 3, dividend paid by a non-financial company is classified as '
        'a cash flow from:',
    options: [
      'Operating activities',
      'Investing activities',
      'Financing activities',
      'Extraordinary activities',
    ],
    answerIndex: 2,
    explanation:
        'Dividends paid are a cost of obtaining finance, so they are '
        'financing activities.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text: 'Under AS 3, purchase of machinery is a cash flow from:',
    options: [
      'Investing activities',
      'Operating activities',
      'Financing activities',
      'It is not a cash flow',
    ],
    answerIndex: 0,
    explanation: 'Acquisition of long-term assets is an investing activity.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text:
        'Under AS 3, interest paid by a non-financial company is classified '
        'as a cash flow from:',
    options: [
      'Financing activities',
      'Investing activities',
      'Extraordinary activities',
      'Operating activities',
    ],
    answerIndex: 0,
    explanation:
        'For non-financial companies, interest and dividends paid are cost '
        'of obtaining finance.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text:
        'Under the indirect method of cash flow from operating activities, '
        'depreciation is:',
    options: [
      'Shown as investing activity',
      'Added back to net profit',
      'Ignored',
      'Deducted from net profit',
    ],
    answerIndex: 1,
    explanation: 'Depreciation is a non-cash expense, so it is added back.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text:
        'Under the indirect method, an increase in trade receivables during '
        'the year is:',
    options: [
      'Added to net profit',
      'Shown as financing activity',
      'Ignored',
      'Deducted from net profit',
    ],
    answerIndex: 3,
    explanation:
        'Higher receivables mean some sales were not collected in cash, so '
        'the increase is deducted.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text:
        'Under AS 3, cash equivalents are short-term, highly liquid '
        'investments with an original maturity of generally:',
    options: [
      'Five years or less',
      'One year or less',
      'Six months or less',
      'Three months or less',
    ],
    answerIndex: 3,
    explanation:
        'Cash equivalents are readily convertible to known amounts of cash '
        'and are subject to insignificant risk of change in value.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text: 'Under AS 3, sale of machinery is a cash flow from:',
    options: [
      'Financing activities',
      'Operating activities',
      'Extraordinary activities',
      'Investing activities',
    ],
    answerIndex: 3,
    explanation:
        'Purchases and sales of long-term assets are investing activities.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text:
        'Under AS 3, proceeds from issue of equity shares are a cash flow '
        'from:',
    options: [
      'Financing activities',
      'Operating activities',
      'None of these',
      'Investing activities',
    ],
    answerIndex: 0,
    explanation:
        'Financing activities change the size and composition of owners\' '
        'capital and borrowings.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text:
        'Net profit is ₹1,00,000, depreciation ₹20,000, increase in '
        'inventories ₹15,000 and increase in trade payables ₹10,000. Cash '
        'flow from operating activities is:',
    options: ['₹95,000', '₹1,45,000', '₹1,15,000', '₹1,25,000'],
    answerIndex: 2,
    explanation: '1,00,000 + 20,000 − 15,000 + 10,000 = ₹1,15,000.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Cash Flow Statement',
    text: 'Under AS 3, income tax paid is generally classified as:',
    options: [
      'Not shown',
      'Always investing activities',
      'Always financing activities',
      'Operating activities, unless specifically linked to investing or financing',
    ],
    answerIndex: 3,
    explanation: 'Taxes are usually linked to operating profits.',
  ),

  // Auditing
  Question(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text: 'Vouching means:',
    options: [
      'Checking the totals of books of account',
      'Physically counting inventory',
      'Examining documentary evidence supporting entries in the books',
      'Preparing the audit report',
    ],
    answerIndex: 2,
    explanation:
        'Vouching tests the authenticity of transactions by examining '
        'invoices, receipts and other supporting documents.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text: 'Which audit evidence is generally the most reliable?',
    options: [
      'Oral explanations from management',
      'Photocopies provided by the client',
      'Internal memos of the client',
      'Confirmation received directly by the auditor from a third party',
    ],
    answerIndex: 3,
    explanation:
        'Evidence from independent external sources, obtained directly '
        'by the auditor, is more reliable than evidence from the entity.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text: '"Teeming and lading" is a fraud involving:',
    options: [
      'Inflating inventory',
      'Misappropriation of cash received from debtors',
      'Fake purchase invoices',
      'Window dressing of profits',
    ],
    answerIndex: 1,
    explanation:
        'Cash from one debtor is stolen and covered with later receipts '
        'from other debtors, so the shortfall keeps rolling forward.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text: 'The statutory audit of a company is conducted under the:',
    options: [
      'Income-tax Act, 1961',
      'Indian Contract Act, 1872',
      'Companies Act, 2013',
      'Partnership Act, 1932',
    ],
    answerIndex: 2,
    explanation:
        'Sections 139 to 148 of the Companies Act, 2013 deal with the '
        'appointment, powers and duties of auditors.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text: 'Internal check means:',
    options: [
      'An audit by the government',
      'A check by the statutory auditor at the year end',
      'Arranging duties so that the work of one person is automatically checked by another',
      'Physical verification of cash only',
    ],
    answerIndex: 2,
    explanation:
        'Internal check divides work so that no single person handles a '
        'transaction from start to finish.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text: 'In auditing, materiality relates to:',
    options: [
      'Whether a misstatement could influence the decisions of users of the financial statements',
      'The number of transactions',
      'The size of the company',
      'The audit fee',
    ],
    answerIndex: 0,
    explanation:
        'Information is material if its omission or misstatement could '
        'influence users\' economic decisions.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text: 'Audit evidence is obtained through procedures such as:',
    options: [
      'Inspection, observation, inquiry, confirmation and recalculation',
      'Only management representations',
      'Only reading the annual report',
      'Only checking the cash book',
    ],
    answerIndex: 0,
    explanation: 'SA 500 describes these audit procedures.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text: 'Test checking means:',
    options: [
      'Testing employees',
      'Physical verification of all assets',
      'Examining a sample of transactions instead of all of them',
      'Checking every transaction',
    ],
    answerIndex: 2,
    explanation:
        'Conclusions are drawn about the whole population from the sample.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text: 'Window dressing means:',
    options: [
      'Valuing stock at cost',
      'Decorating the office',
      'Disclosing all information',
      'Presenting financial statements to look better than the actual position',
    ],
    answerIndex: 3,
    explanation:
        'Examples include delaying payments or advancing sales just before '
        'the year end.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Auditing Concepts & Evidence',
    text: 'Internal audit is:',
    options: [
      'An independent appraisal activity within the organisation, carried out for management',
      'An audit by tax authorities',
      'An audit only of cash',
      'The statutory audit under the Companies Act',
    ],
    answerIndex: 0,
    explanation:
        'It reviews internal controls, risk management and operations on a '
        'continuing basis.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text:
        'When the auditor cannot obtain sufficient appropriate audit evidence '
        'and the possible effects are both material and pervasive, the auditor '
        'issues:',
    options: [
      'An unmodified opinion',
      'A qualified opinion',
      'A disclaimer of opinion',
      'An emphasis of matter paragraph only',
    ],
    answerIndex: 2,
    explanation:
        'Under SA 705, material and pervasive inability to obtain '
        'evidence leads to a disclaimer. If material but not pervasive, the '
        'opinion is qualified.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text:
        'The first auditor of a company (other than a Government company) is '
        'appointed by the Board of Directors within:',
    options: [
      '30 days of registration',
      '60 days of registration',
      '90 days of registration',
      '6 months of registration',
    ],
    answerIndex: 0,
    explanation:
        'Section 139(6): the Board appoints the first auditor within 30 '
        'days of registration. If it fails, members appoint one within 90 days '
        'at an EGM.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text:
        'In a listed company, an individual auditor can be appointed for not '
        'more than:',
    options: [
      'Two terms of five consecutive years',
      'One term of three years',
      'One term of five consecutive years',
      'Ten consecutive years',
    ],
    answerIndex: 2,
    explanation:
        'Under Section 139(2), an individual can serve one term of five '
        'consecutive years and an audit firm two such terms.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text: 'An auditor expresses an unmodified opinion when:',
    options: [
      'There are material and pervasive misstatements',
      'The financial statements are prepared, in all material respects, in accordance with the framework',
      'Sufficient evidence could not be obtained',
      'The company has made a loss',
    ],
    answerIndex: 1,
    explanation:
        'An unmodified (clean) opinion means the auditor is satisfied that '
        'the financial statements give a true and fair view.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text: 'An adverse opinion is expressed when misstatements are:',
    options: [
      'Not yet identified',
      'Both material and pervasive',
      'Material but not pervasive',
      'Immaterial',
    ],
    answerIndex: 1,
    explanation:
        'If misstatements are material but not pervasive, a qualified '
        'opinion is given instead.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text:
        'A listed company can appoint an audit firm as auditor for not more '
        'than:',
    options: [
      'Three terms of five years each',
      'Ten terms of one year each',
      'Two terms of five consecutive years each',
      'One term of five years',
    ],
    answerIndex: 2,
    explanation:
        'Section 139(2): an audit firm may serve two terms of five '
        'consecutive years; an individual may serve one term of five years.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text:
        'A subsequent auditor of a non-government company is appointed by '
        'the:',
    options: [
      'Board of Directors',
      'Members at the annual general meeting',
      'Central Government',
      'Registrar of Companies',
    ],
    answerIndex: 1,
    explanation:
        'Section 139(1): the auditor is appointed at the AGM for a term of '
        'five years.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text:
        'A casual vacancy in the office of auditor of a non-government '
        'company (not caused by resignation) is filled by the:',
    options: [
      'CAG',
      'Members at the next AGM only',
      'Board of Directors within 30 days',
      'Central Government',
    ],
    answerIndex: 2,
    explanation:
        'If the vacancy is due to resignation, the appointment must also be '
        'approved by members within three months.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text: 'An auditor can be removed before the expiry of the term by:',
    options: [
      'An ordinary resolution of the Board',
      'The managing director alone',
      'A special resolution, after obtaining the approval of the Central Government',
      'A simple notice',
    ],
    answerIndex: 2,
    explanation:
        'Section 140(1) provides this procedure, with an opportunity of '
        'being heard.',
  ),
  Question(
    subjectId: 'i_caa',
    chapter: 'Audit Reports & Company Auditors',
    text: 'A qualified opinion is expressed when misstatements are:',
    options: [
      'Not material',
      'Material but not pervasive',
      'Material and pervasive',
      'Not yet audited',
    ],
    answerIndex: 1,
    explanation:
        'Material and pervasive misstatements lead to an adverse opinion.',
  ),
];
