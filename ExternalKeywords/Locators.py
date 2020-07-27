import json
import jsonpath

def read_locator_json(locatorname):
    f = open('C:/Users/Subhashini/PycharmProjects/RobotAutomation/JsonFiles/Elements.json', 'r')
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response,locatorname)
    return value[0]
