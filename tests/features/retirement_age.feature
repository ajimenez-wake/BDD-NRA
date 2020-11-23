Feature: Retirement Age Calculator
  As a citizen,
  I want to know when and what age I'll retire.

  Scenario Outline: Retirement Time
    When the user enters their "<year>" and "<month>" of their birth.
    Then the normal retirement age of "<retirement_year>" and "<retirement_month>" is returned unless invalid.


    Examples: Age
    | year | month | retirement_year | retirement_month |
    | 1937 | 1     | 2002            | January          |
    | 1938 | 1     | 2003            | March            |
    | 1939 | 1     | 2004            | May              |
    | 1940 | 1     | 2005            | July             |
    | 1941 | 1     | 2006            | September        |
    | 1942 | 1     | 2007            | November         |
    | 1942 | 3     | 2008            | January          |
    | 1943 | 1     | 2009            | January          |
    | 1954 | 1     | 2020            | January          |
    | 1955 | 1     | 2021            | March            |
    | 1956 | 1     | 2022            | May              |
    | 1957 | 1     | 2023            | July             |
    | 1958 | 1     | 2024            | September        |
    | 1959 | 1     | 2025            | November         |
    | 1960 | 1     | 2027            | January          |
    | 1899 | 1     | -1              | invalid          |
    | 2021 | 1     | -1              | invalid          |

