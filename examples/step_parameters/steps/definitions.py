from behave import given, then, when


@given("I have a new {item} in my cart")
def i_have_item_in_cart(context, item):

    print("The item is : {}".format(item))