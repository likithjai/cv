#import "@preview/clickworthy-resume:1.0.1": *


#let acute = "\u{301}"
#let jb = linebreak(justify: false)

// Personal Information
#let name = "S.R.J. Likith, Ph.D"
#let email = "jailikith@gmail.com"
#let github = "github.com/likithjai"
#let linkedin = "linkedin.com/in/likithjai"
#let contacts = (
  [#link("mailto:" + email)[#email]],
  [#link("https://" + github)[#github]],
  [#link("https://" + linkedin)[#linkedin]],
  [#link("https://" + linkedin)[#linkedin]],
)
#let location = "Bangalore, KA"

// Professional Summary
// #let summary = "h "

#let bullet(body) = grid(
  columns: (1em, 1fr),
  column-gutter: 0.3em,
  [•], body,
)

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
  // summary: summary,
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
    - Developed software tools to help scale a mutual fund distribution business
    - Automating the generation of customizable assets for clients
    - Developed and maintained a highly specialized CRM web-app for the company's internal use using the *Django* framework (Python)
    - Shooting, video and audio editing, and publishing to social media of financial literacy short-form videos
  ],
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
  ],
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
  ],
)

#exp(
  title: "Postdoctoral Researcher",
  organization: "Colorado School of Mines",
  date: "2021 - 2022",
  location: "Golden, CO",
  details: [
    - Using Density Functional Theory (DFT) to analyse the dynamical stability of Ti-based alloy systems for the Center for Advanced Non-Ferrous Structural Alloys (#link("https://canfsa.org")[CANFSA]) group under the advisership of #box[Dr. Amy Clarke] (Department of Metallurgical and Materials Engineering)
    - Leveraging remote *High Performance Computing (HPC) clusters* to investigate massive datasets and *data visualization*
  ],
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
  ],
)




// Skills
= Skills
#skills((
  (
    "Applications",
    (
      [Vienna _Ab-initio_ Simulation Package (VASP), Visualization for Electronic and STructural Analysis (VESTA) ],
      [Amsterdam Density Functional (ADF)],
      [Signal Processing],
      [Embedded Security],
      [FPGA Architectures],
      [System-on-Chip Design],
      [Software Reliability],
      [Technical Leadership],
    ),
  ),
  (
    "Languages",
    (
      [Python],
      [Go (beginner)],
      [Rust (beginner)],
      [Matlab],
      [Docker/Podman],
      [Git],
    ),
  ),
  (
    "Word-processing",
    (
      [Typst],
      [LaTeX],
      [Emacs],
      [MS Office],
      [LibreOffice/OpenOffice],
    ),
  ),
))

// Experiences

// Publications
// This template uses the `pub-list` function to display a list of publications.
// It requires a `.bib` or `.yml` file with publication entries.
// The `pub` function is a simplified version that could be used instead to produce multiple publication entries by calling it multiple times.
#show "S. Likith": strong
#show "S. J. Likith": strong
#show "S. R. Jai Likith": strong

= Publications, Presentations, and Posters

== Publications
#pub-list(
  bib: bibliography("assets/publications.yml"),
  // style: "full",
)
// - *#box[S.R.J. Likith]*, #box[C.A. Farberow], #box[S. Manna], #box[A. Abdulslam], #box[V. Stevanovic#acute], #box[D.A. Ruddy], #box[J.A. Schaidle], #box[D.J. Robichaud], #box[C.V. Ciobanu]
//     Thermodynamic Stability of Molybdenum Oxycarbides Formed from Orthorhombic Mo#sub[2]C in Oxygen-Rich Environments
// _Journal of Physical Chemistry C_, 122, 1223 (2018)
// - #box[G. Stan], #box[C.V. Ciobanu], *#box[S.R.J. Likith]*, #box[A. Rani], #box[S. Krylyuk], #box[A.V. Davydov] #jb
// Doping of MoTe#sub[2] via surface charge-transfer in air. #jb
// _ACS Applied Materials and Interfaces_ 12 (15), 18182-18193

// Local Variables:
// typst-preview--master-file: "/home/lik/Documents/cv/main.typ"
// End:

== Conferences
- *S.R.J. Likith* (Designated Speaker), Amy Clarke \
  Local Distortion Effects on the Dynamic Lattice Stability in the BCC Phase of Titanium and its Alloys \
  _TMS Annual Meeting & Exhibition, 2022_

- G. Stan, C.V. Ciobanu, S.R.J. Likith, A. Rani, S. Krylyuk, A.V. Davydov \
  Native and induced surface charge-transfer doping of MoTe₂\
  _Bulletin of the American Physical Society, 2020_

- C.A. Farberow, S.R.J. Likith, S. Manna, A. Abdulslam, V. Stevanović, D.A. Ruddy, J.A. Schaidle, D.J. Robichaud, C.V. Ciobanu \
  Thermodynamic Stability of Molybdenum Oxycarbides Formed from Orthorhombic Mo₂C in Oxygen-Rich Environments \
  _North American Catalysis Society Meeting, 2019_

== Posters
- *S.R.J. Likith*, C.V. Ciobanu \
  Quasi-2D Group-IV Monochalcogenides: A DFT Search \
  _Materials Research Society Dec 2019_
- *S.R.J. Likith*, C.V. Ciobanu \
  Performance of van der Waals Density Functionals for Group-IV Monochalcogenides \
  _Materials Research Society Dec 2019_


= Research Projects
- *2D Materials* \
  Colorado School of Mines, Golden, CO 80401, USA
  - Studied the electronic and piezoelectric properties of 2D and quasi-2D (van der Waals-layered) materials using atomistic modeling (Density Functional Theory, DFT)
  - Modeling van der Waals-dominated systems, computational discovery strategies, and automating tasks
  - Text file manipulation, compiling relevant information from large numbers of files, and post-processing data (e.g., plotting) using Python

- *Piezoelectric materials* \
  Colorado School of Mines, Golden, CO 80401, USA
  - Computational discovery of Perovskite Nitrides and Transition Metal Dichalcogenide heterostructures for piezoelectric applications
  - Interplay between electronic and mechanical behaviour of materials
  - Analysing large sets of data and mechanical behaviour of materials

- *Transition metal carbide catalysts* \
  Colorado School of Mines, Golden, CO 80401, USA
  - Studied the structure and composition of metal carbide catalysts for ex-situ catalytic fast pyrolysis
  - High-throughput computation strategies, thermodynamics and energetics of adsorption
  - Large-scale text file manipulation using bash, and post-processing data using MATLAB



= Outreach and other Activities
#exp(
  title: "Outreach Speaker",
  organization: "Colorado High-School Science Outreach",
  date: "2017-2020",
  location: "Golden, CO, USA",
  details: [
    - Presented research-related science topics to middle and high-school students
    - Pedagogy and presentation skills
    - Ability to explain a complex concept to someone outside the field or is at a middle or high-school level
  ],
)


#exp(
  title: "Colorado State-level Event Supervisor",
  organization: "Science Olympiad",
  date: "2017-2020",
  location: "Greenwood Village, CO, USA",
  details: [
    - Supervised a chemistry experiment event for high-school students from around the state
    - Explained some basic chemistry concepts on-the-fly, ensured safety of all involved
    - Hands-on teaching and managing event logistics
  ],
)


#exp(
  title: "Workshop Participant",
  organization: "STEM Guitar Workshop",
  date: "2019",
  location: "Golden, CO",
  details: [
    - Built a fully functional and tuned electric guitar
    - Wood-working, dip-painting, electronic circuitry, soldering, intonation and tuning
    - Applied materials science, physics and electronics concepts to the building and functioning of an electric guitar
  ],
)

