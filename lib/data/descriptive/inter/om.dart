import '../../../models/question.dart';

const interOmDescriptive = [
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Productivity & Capacity',
    text:
        'Distinguish between design capacity, effective capacity and actual '
        'output. A plant has a design capacity of 100 units a day, effective '
        'capacity of 80 units and actual output of 64 units. Calculate its '
        'utilisation and efficiency.',
    marks: 5,
    answer:
        '• Design capacity: the maximum output possible under ideal '
        'conditions.\n'
        '• Effective capacity: the output possible after allowing for normal '
        'constraints such as maintenance, set-ups, product mix and breaks.\n'
        '• Actual output: what is actually produced, which is usually lower '
        'because of breakdowns, absenteeism, shortages and other problems.\n'
        'Calculation:\n'
        '• Utilisation = Actual output ÷ Design capacity × 100 = 64 ÷ 100 × '
        '100 = 64%\n'
        '• Efficiency = Actual output ÷ Effective capacity × 100 = 64 ÷ 80 × '
        '100 = 80%\n'
        'Efficiency shows how well the plant performs against what is '
        'realistically possible, so it is the better measure of operating '
        'performance.',
    problem: true,
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Plant Layout',
    text: 'Distinguish between product layout and process layout.',
    marks: 5,
    answer:
        '• Arrangement: in a product (line) layout, machines are placed '
        'in the sequence of operations for one product; in a process '
        '(functional) layout, similar machines are grouped together.\n'
        '• Suitability: product layout suits mass production of standard '
        'products; process layout suits job or batch production of varied '
        'products.\n'
        '• Material handling: shorter and often mechanised in product '
        'layout; longer and more complex in process layout.\n'
        '• Flexibility: product layout is inflexible, as a change in product '
        'needs a new layout; process layout is flexible.\n'
        '• Investment: product layout needs special-purpose machines and '
        'higher investment; process layout uses general-purpose machines.\n'
        '• Breakdown: in a product layout, one breakdown can stop the whole '
        'line; in a process layout, work can be moved to another machine.\n'
        '• Work-in-progress and throughput time are lower in product layout.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Project Management (PERT & CPM)',
    text:
        'Distinguish between PERT and CPM. How is the expected time of an '
        'activity calculated in PERT?',
    marks: 5,
    answer:
        '• Time estimates: PERT uses three time estimates for each '
        'activity (probabilistic); CPM uses one (deterministic).\n'
        '• Suitability: PERT suits new projects such as research and '
        'development, where times are uncertain; CPM suits repetitive '
        'projects such as construction, where times are known.\n'
        '• Focus: PERT focuses on time and the probability of finishing by a '
        'date; CPM focuses on the trade-off between time and cost, including '
        'crashing.\n'
        '• Orientation: PERT is event-oriented; CPM is activity-oriented.\n'
        'Expected time in PERT:\n'
        'tₑ = (t₀ + 4tₘ + tₚ) ÷ 6, where t₀ is the optimistic time, tₘ the '
        'most likely time and tₚ the pessimistic time.\n'
        'The standard deviation of an activity is (tₚ − t₀) ÷ 6.\n'
        'Example: t₀ = 4, tₘ = 6, tₚ = 14 gives tₑ = (4 + 24 + 14) ÷ 6 = 7 '
        'days.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Quality, JIT & Maintenance',
    text:
        'What is Just-in-Time (JIT) production? State its features and '
        'benefits.',
    marks: 5,
    answer:
        'JIT is a system in which materials are received and goods are '
        'produced only when they are needed, in the exact quantities needed. '
        'Production is pulled by customer demand rather than pushed into '
        'stock.\n'
        'Features:\n'
        '• Very low inventory of materials, work-in-progress and finished '
        'goods.\n'
        '• A small number of reliable suppliers making frequent deliveries.\n'
        '• Pull system, often controlled with kanban cards.\n'
        '• Short set-up times and small batch sizes.\n'
        '• Focus on quality at source, since there is no buffer stock.\n'
        '• Multi-skilled workers and preventive maintenance.\n'
        'Benefits:\n'
        '• Lower inventory carrying costs and less storage space.\n'
        '• Less waste and fewer defects.\n'
        '• Shorter lead times and faster response to customers.\n'
        '• Problems in the process become visible and are fixed quickly.',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Strategic Analysis',
    text: 'What is SWOT analysis? Explain its components with examples.',
    marks: 5,
    answer:
        'SWOT analysis is a tool for assessing an organisation\'s '
        'strategic position by looking at internal strengths and weaknesses '
        'and external opportunities and threats.\n'
        '• Strengths (internal): what the organisation does well, such as a '
        'strong brand, skilled staff or low costs.\n'
        '• Weaknesses (internal): areas where it is at a disadvantage, such '
        'as old technology, high debt or a narrow product range.\n'
        '• Opportunities (external): trends it could use, such as a growing '
        'market, new technology or favourable government policy.\n'
        '• Threats (external): factors that could harm it, such as new '
        'competitors, changing customer tastes or new regulation.\n'
        'The aim is to build on strengths, correct weaknesses, take up '
        'opportunities and guard against threats. Strategies can match '
        'strengths with opportunities (SO), or use strengths to counter '
        'threats (ST).',
  ),
  DescriptiveQuestion(
    subjectId: 'i_om',
    chapter: 'Strategy Formulation',
    text: 'Explain Michael Porter\'s generic competitive strategies.',
    marks: 5,
    answer:
        'Porter argued that a firm can gain competitive advantage in one '
        'of three ways:\n'
        '• Cost leadership: becoming the lowest-cost producer in the '
        'industry, through economies of scale, efficient processes and tight '
        'cost control. The firm can then charge average prices for higher '
        'profit, or lower prices to win share.\n'
        '• Differentiation: offering a product that customers see as unique, '
        'through quality, design, brand, features or service, so that they '
        'will pay a premium.\n'
        '• Focus: serving a narrow market segment better than broad '
        'competitors. It has two forms: cost focus (lowest cost within the '
        'segment) and differentiation focus (unique offering for the '
        'segment).\n'
        'Porter warned that a firm trying to do everything without a clear '
        'strategy risks being "stuck in the middle" with no advantage.',
  ),
];
