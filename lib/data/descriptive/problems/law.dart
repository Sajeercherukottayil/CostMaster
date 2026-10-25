import '../../../models/question.dart';

const lawProblems = [
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text:
        'A offers by letter to sell his car to B for ₹2,00,000. B replies, '
        '"I accept, but at ₹1,80,000." A refuses. Later B says he will pay '
        '₹2,00,000 after all, and sues A when A still refuses. Will B '
        'succeed?',
    marks: 4,
    problem: true,
    answer:
        'Provision: Under section 7, acceptance must be absolute and '
        'unqualified. An acceptance with changed terms is a counter-offer, '
        'which rejects the original offer.\n'
        'Analysis: B\'s reply changed the price, so it was a counter-offer. '
        'A\'s original offer ended at that point, and A did not accept the '
        'counter-offer. B\'s later "acceptance" of ₹2,00,000 is only a new '
        'offer.\n'
        'Conclusion: There is no contract, so B will not succeed.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text:
        'A 16-year-old mortgages his house to a moneylender to borrow '
        '₹50,000. He does not repay, and the lender sues to recover the '
        'money and enforce the mortgage. Decide.',
    marks: 4,
    problem: true,
    answer:
        'Provision: Under section 11, a minor is not competent to '
        'contract. In Mohori Bibee v. Dharmodas Ghose, the Privy Council held '
        'that an agreement with a minor is void from the beginning.\n'
        'Analysis: The mortgage and the loan agreement are void. The minor '
        'cannot be made personally liable, and the doctrine of estoppel does '
        'not apply against a minor. A minor\'s agreement cannot be ratified '
        'on reaching majority.\n'
        'Conclusion: The lender can neither recover the loan nor enforce '
        'the mortgage.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Indian Contract Act, 1872',
    text:
        'X promises to pay Y ₹10,000 if Y damages Z\'s shop. Y does so, '
        'but X refuses to pay. Separately, P agrees to sell his house to Q, '
        'and Q\'s consent is obtained by P threatening to harm Q\'s family. '
        'What is the legal position in each case?',
    marks: 4,
    problem: true,
    answer:
        'Case 1: Under section 23, an agreement whose object involves '
        'injury to the person or property of another is unlawful and void. '
        'Y cannot recover ₹10,000 from X.\n'
        'Case 2: Consent obtained by threatening to commit an act forbidden '
        'by the Indian Penal Code is coercion (section 15). Under section '
        '19, the contract is voidable at Q\'s option. Q may rescind it or '
        'choose to go ahead.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text:
        'X buys a hair dye from a cosmetics shop. It contains a harmful '
        'chemical that causes a skin disease. The shop says X should have '
        'checked the product. Can X claim damages?',
    marks: 4,
    problem: true,
    answer:
        'Provision: Under section 16(2), where goods are bought by '
        'description from a seller who deals in such goods, there is an '
        'implied condition that they are of merchantable quality. Caveat '
        'emptor does not apply here.\n'
        'Analysis: The shop deals in cosmetics. A hair dye that harms '
        'normal users is not of merchantable quality, and the defect could '
        'not be found by ordinary examination. This is similar to Grant v. '
        'Australian Knitting Mills.\n'
        'Conclusion: X can treat the breach of condition as a breach of '
        'warranty and claim damages from the shop.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text:
        'P agrees to sell 100 specific bags of rice lying in his '
        'warehouse to Q. The price is to be paid on delivery next week. The '
        'warehouse catches fire before delivery and the rice is destroyed. '
        'Who bears the loss?',
    marks: 4,
    problem: true,
    answer:
        'Provision: Under section 20, where there is an unconditional '
        'contract for the sale of specific goods in a deliverable state, '
        'property passes to the buyer when the contract is made, even if '
        'payment or delivery is postponed. Under section 26, risk passes '
        'with property unless agreed otherwise.\n'
        'Analysis: The bags were specific and ready for delivery, so '
        'ownership and risk passed to Q when the contract was made.\n'
        'Conclusion: Q bears the loss and must pay the price, unless P was '
        'negligent as bailee of the goods.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Sale of Goods Act, 1930',
    text:
        'A delivers a TV to B "on approval" for 7 days. B neither returns '
        'it nor tells A that he rejects it, and keeps it for a month. Has '
        'ownership passed to B?',
    marks: 3,
    problem: true,
    answer:
        'Provision: Under section 24, when goods are delivered on '
        'approval or "sale or return", property passes when the buyer '
        'signifies approval, does any act adopting the transaction, or keeps '
        'the goods beyond the fixed time without giving notice of '
        'rejection.\n'
        'Conclusion: B kept the TV beyond the 7 days without rejecting it, so '
        'property passed to B at the end of the 7th day. B must pay the '
        'price.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text:
        'R issues a cheque for ₹1,00,000 to S, which is dishonoured for '
        'insufficient funds. What steps must S take to prosecute R under '
        'section 138, and what is the penalty?',
    marks: 5,
    problem: true,
    answer:
        'Conditions and steps under section 138:\n'
        '• The cheque must have been issued to discharge a legally '
        'enforceable debt or liability.\n'
        '• It must be presented within its validity period (3 months from '
        'its date).\n'
        '• S must send a written demand notice to R within 30 days of '
        'receiving information of dishonour from the bank.\n'
        '• R must fail to pay within 15 days of receiving the notice.\n'
        '• S must file a complaint within one month after the 15 days end.\n'
        'Penalty: imprisonment of up to 2 years, or a fine of up to twice '
        'the cheque amount, or both.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Negotiable Instruments Act, 1881',
    text:
        'X steals a bearer cheque from A and gives it to Y in payment for '
        'goods. Y does not know it was stolen. Can A recover the amount '
        'from Y?',
    marks: 4,
    problem: true,
    answer:
        'Provision: Under section 9, a holder in due course is a person '
        'who, for consideration and before maturity, becomes the holder of a '
        'bearer instrument (or payee or endorsee of an order instrument) '
        'without reason to believe the transferor\'s title was defective. A '
        'holder in due course gets a good title, free from defects in the '
        'title of earlier parties.\n'
        'Analysis: The cheque is payable to bearer, so it passes by '
        'delivery. Y gave value (the goods) in good faith.\n'
        'Conclusion: Y is a holder in due course with a valid title. A '
        'cannot recover from Y; A\'s remedy is against the thief X.',
  ),
  DescriptiveQuestion(
    subjectId: 'law',
    chapter: 'Business Communication',
    text:
        'A customer has emailed to complain that an order promised for '
        'Monday arrived on Friday. Write a short, professional reply.',
    marks: 5,
    problem: true,
    answer:
        'Subject: Your order No. 4521 – our apologies for the delay\n'
        'Dear Ms Rao,\n'
        'Thank you for letting us know about the late delivery of your '
        'order. I am sorry that it reached you on Friday instead of Monday, '
        'as promised.\n'
        'The delay was caused by a backlog at our courier\'s hub. We have '
        'since added a second courier for your area, so this should not '
        'happen again.\n'
        'As a goodwill gesture, we have refunded the delivery charge of ₹150 '
        'to your account.\n'
        'Please call me on 98765 43210 if there is anything else I can do.\n'
        'Yours sincerely,\n'
        'Anil Kumar, Customer Service Manager\n'
        'Points to note: thank and apologise first, explain briefly without '
        'blaming the customer, say what has been done, offer a remedy, and '
        'end with a clear contact.',
  ),
];
