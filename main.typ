#import "@preview/clickworthy-resume:1.0.1": *


#let acute = "\u{301}"
#let jb = linebreak(justify: false)

// Personal Information
#let name = "S.R.J. Likith, Ph.D"
#let email = "alex.morgan@example.com"
#let github = "github.com/alexm-dev"
#let linkedin = "linkedin.com/in/alex-morgan"
#let contacts = (
  [#link("mailto:" + email)[#email]],
  [#link("https://" + github)[#github]],
  [#link("https://" + linkedin)[#linkedin]],
)
#let location = "San Francisco, CA"

// Professional Summary
#let summary = " "

// Resume configuration
#let theme = rgb("#26428b")
#let font = "New Computer Modern"
#let fontSize = 11pt
#let lang = "en"
#let margin = (
  top: 1cm,
  bottom: 1cm,
  left: 1cm,
  right: 1cm,
)

#show: resume.with(
  author: name,
  location: location,
  contacts: contacts,
  summary: summary,
  theme-color: theme,
  font: font,
  font-size: fontSize,
  lang: lang,
  margin: margin,
)




// Education
= Education
#edu(
  institution: "Colorado School of Mines",
  date: "2016 - 2020",
  location: "Golden, CO",
  degrees: (
    ("Ph.D.", "Mechanical Engineering"),
  ),
    gpa: "3.82",
  extra: "Advisor: Prof. Cristian Ciobanu",
)

#edu(
  institution: "Colorado School of Mines",
  date: "2016 - 2018",
  location: "Golden, CO",
  degrees: (
      ("M.S.", "Mechanical Engineering"),
  ),
    gpa: "3.82",
  extra: "Advisor: Prof. Cristian Ciobanu",
)

#edu(
  institution: "Amrita School of Engineering",
  date: "2010 - 2014",
  location: "Bangalore, KA",
  degrees: (
    ("B.Tech.", "Mechanical Engineering"),
  ),
    gpa: "7.9",
)


// experience
= Experience
#exp(
    title: "Data Analyst and Social Media Manager",
    organization: "Wizr Wealth",
    date: "2024 - Present",
    location: "Bangalore, KA",
    details: [
        - lorem
        - ipsum
    ]
)



#exp(
  title: "Data Analyst",
  organization: "Deloitte",
  date: "2022 - 2023",
  location: "Lake Mary, FL",
  details: [
      - Analysed *big-data systems* and designed *custom data solutions* for the *S&P 500* component bank holding company as a client: *M&T Bank* using advanced technologies such as Snowflake, Hadoop, SQL, Python, and Databricks
      - Led a cross-disciplinary team including data engineers, analysts, and product owners in efforts to overhaul and debug the *Mortgage Data* system of records, securing a *Mortgage Data Superstar* award from the client.
      - Took charge of merging of a *commercial equipment financing* system of records of the client and an acquired bank: *People's United Bank (PUB)* including around 200 profitability, regulatory, and FDIC reporting requirements. This involved tracking the relevant financial data elements of the two entities and tallying all the the General Ledger (GL) entries of the fee and revenue streams, resulting in *one cohesive system of records on the Snowflake platform.*
      - Client-facing and back-end facing communication to test and implement solutions end-to-end.
  ]
)

#exp(
  title: "Postdoctoral Researcher",
  organization: "University of Florida",
  date: "2020 - 2021",
  location: "Gainesville, FL",
  details: [
      - *Data Analysis, website content*, and *database management* for the Engaged Quality Instruction through Professional Development (EQuIPD) group under the advisership of #box[Dr. Nancy Ruzycki] (Department of Materials Science and Engineering)
      - Using analytical and programming skills (*Python*) to interpret and investigate large datasets. This was used to drive decision-making for the group and to understand the experiences of the teachers supported via the grant.
    - Written content for the group's website
        - *SQL*-based inventory database management.
  ]
)

#exp(
  title: "Postdoctoral Researcher",
  organization: "Colorado School of Mines",
  date: "2021 - 2022",
  location: "Golden, CO",
  details: [
      - Using Density Functional Theory (DFT) to analyse the dynamical stability of Ti-based alloy systems for the Center for Advanced Non-Ferrous Structural Alloys (#link("https://canfsa.org")[CANFSA]) group under the advisership of #box[Dr. Amy Clarke] (Department of Metallurgical and Materials Engineering)
      - Leveraging remote *High Performance Computing (HPC) clusters* to investigate massive datasets and *data visualization*
  ]
)

= Teaching

#exp(
    title: "Teaching Assistant",
    organization: "Colorado School of Mines",
    date: "2015 - 2016, 2019-202",
    location: "Golden, CO",
    details: [
        - Courses: Solid Mechanics, Advanced Solid Mechanics, Dynamics
        - Conducted recitations, helped students with understanding various aspects of the courses and promlem-solving, and graded weekly assignments.
        - Planning content for lectures, managing co-TAs, and various pedagogy strategies.
    ]
)




// Skills
= Skills
#skills((
  ("Expertise", (
    [Distributed Systems],
    [Real-Time Operating Systems],
    [Signal Processing],
    [Embedded Security],
    [FPGA Architectures],
    [System-on-Chip Design],
    [Software Reliability],
    [Technical Leadership],
  )),
  ("Software", (
    [C/C++],
    [Rust],
    [SystemVerilog],
    [Matlab],
    [Linux Kernel],
    [Docker],
    [Kubernetes],
    [Jenkins],
    [gRPC],
    [Git],
    [Yocto Project],
  )),
  ("Languages", (
    [Python],
    [C/C++],
    [Rust],
    [Shell],
    [SystemVerilog],
    [VHDL],
  )),
))

// Experiences

// Publications
// This template uses the `pub-list` function to display a list of publications.
// It requires a `.bib` or `.yml` file with publication entries.
// The `pub` function is a simplified version that could be used instead to produce multiple publication entries by calling it multiple times.
#show "S. Likith": strong
= Publications
// #pub-list(
//   bib: bibliography("assets/publications.bib"),
//   style: "ieee"
// )
- *#box[S.R.J. Likith]*, #box[C.A. Farberow], #box[S. Manna], #box[A. Abdulslam], #box[V. Stevanovic#acute], #box[D.A. Ruddy], #box[J.A. Schaidle], #box[D.J. Robichaud], #box[C.V. Ciobanu] #jb
Thermodynamic Stability of Molybdenum Oxycarbides Formed from Orthorhombic Mo#sub[2]C in Oxygen-Rich Environments #jb
_Journal of Physical Chemistry C_, 122, 1223 (2018)
- #box[G. Stan], #box[C.V. Ciobanu], *#box[S.R.J. Likith]*, #box[A. Rani], #box[S. Krylyuk], #box[A.V. Davydov] #jb
Doping of MoTe#sub[2] via surface charge-transfer in air. #jb
_ACS Applied Materials and Interfaces_ 12 (15), 18182-18193

#edu(
  institution: "Amrita School of Engineering",
  date: "2010 - 2014",
  location: "Bangalore, KA",
  degrees: (
    ("B.Tech.", "Mechanical Engineering"),
  ),
    gpa: "7.9",
)
