# to execute test cases in parallel
install pabot library using pip install robotframework-pabot

pabot --processes 2 TestCases\*.robot --- this command to run test cases in parallel


# to run browser in headless mode ie: browser will run at the backend and wont be visible on the frontend
--headlesschrome or headlessfirefox
#execution will be faster using this