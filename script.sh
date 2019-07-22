# Nicola Blackstock 
# Assignment 2 - Command Line Homework - CHALLENGE 2 
# Due Date: June 12th 2019
# UCBE Cyber Security 

# inside Chal-2_VIP directory 
echo -------------------------------------------------------------
echo Create a folder called AllRecords.
echo mkdir AllRecords
mkdir AllRecords

echo -------------------------------------------------------------
echo Copy all of the order records from 2012–2017 into the AllRecords folder.
echo unzip file - OrderRecords.zip
echo unzip OrderRecords.zip
unzip OrderRecords.zip
echo navigate to OrderRecords
echo cd OrderRecords
cd OrderRecords
echo copy all records and store into AllRecords
echo find . -type f -exec cp {} ../AllRecords \;
find . -type f -exec cp {} ../AllRecords \;

echo -------------------------------------------------------------
echo Inside of the AllRecords folder, create a folder called VIPCustomerOrders.
echo navigate to AllRecords directory
echo cd ../AllRecords
echo create a folder called VIPCustomerOrders.
echo mkdir VIPCustomerOrders
mkdir VIPCustomerOrders

echo -------------------------------------------------------------
echo Find all orders from the VIP Customers Michael Davis or Michael Campbell. Include line and file names in
the output
echo grep -rni "michael,davis" *
grep -rni "michael,davis" *

echo -------------------------------------------------------------
echo Move these specific files into the VIPCustomerOrders folder in the form of two files:
michaelcampbellorders.output and michaeldavisorders.output.
echo Michael Campbell
echo grep -rni "michael,campbell" * > VIPCustomerOrders/michaelcampbellorders.output
grep -rni "michael,campbell" * > VIPCustomerOrders/michaelcampbellorders.output
echo Michael Davis
echo grep -rni "michael,davis" * > VIPCustomerOrders/michaeldavisorders.output
grep -rni "michael,davis" * > VIPCustomerOrders/michaeldavisorders.output

echo -------------------------------------------------------------
echo Create a file called VIPCustomerDetails.md that details how many orders each of the two users made.
echo touch VIPCustomerDetails.md
touch VIPCustomerDetails.md
echo Navigate into VIPCustomerOrders
cd VIPCustomerOrders/
echo count orders for Michael Davis
echo wc -l michaeldavisorders.output > ../VIPCustomerDetails.md 
wc -l michaeldavisorders.output > ../VIPCustomerDetails.md 
echo count orders for Michael Campbell
echo wc -l michaelcampbellorders.output > ../VIPCustomerDetails.md 
wc -l michaelcampbellorders.output >> ../VIPCustomerDetails.md 
