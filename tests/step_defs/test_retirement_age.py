import retirement
from pytest_bdd import scenarios, when, then, parsers

CONVERTERS = {
    'year': int,
    'month': int,
    'retirement_year': int,
    'retirement_month': str,
}

scenarios('../features/retirement_age.feature', example_converters=CONVERTERS)


@when('the user enters their "<year>" and "<month>" of their birth.')
def enter_age(year, month):
    global age
    age = retirement.full_retirement_date(year, month)


@then('the normal retirement age of "<retirement_year>" and "<retirement_month>" is returned unless invalid.')
def returned_age(retirement_year, retirement_month):
    assert age == (retirement_year, retirement_month)
