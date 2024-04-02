Let's get a walkthrough of how the completed project is supposed to work.
> Starting with the login page, user will enter details (college mail ID) and their details will be validated. From the login page there will be 3 options:
> * Report Lost Item- Its main function will be to get item details (image is not mandatory here) and store it in the Lost Items DB. Each item will be specified under the category in which it lies. See the category details below. Once the user has successfully entered the item details, he/she has to add his/her personal details as well such as name and phone number, next there will be an option to see related items in the item gallery.
> * Report Found Item- Its main function will be to get item details (IMAGE IS MANDATORY HERE) and store it in the Found Items DB. Each item will be specified under the category it lies. See the category details below. The founder will have to submit the found item to the Lost and Found department of college and the owner will have to Collect the item from Lost And Found Department.. 
> * Items Gallery- First user will get a select category button. Then it will show all the items found lately or over a period of time. These items have not been claimed yet. It will fetch data from the Found Items DB. Each item will have the option to be claimed. Once user selects an item and clicks on 'CLAIM NOW' , then the user will be directed to 'Details Page'. Here we will get the user details including: Name, SAP ID, Branch, Year, Contact Number, Date of claiming. This record will be stored in Collected Items DB and the item will be removed from Found Items DB. Finally the user will proceed to claim the item by visiting the Lost And Found Department.
> * ✨New Feature✨ Help Us Find- This page will fetch data from the Lost Items DB and will display what all items are lost and if users see such item anywhere they can report it in the Found Item section. Each item will have a button name 'REPORT AS FOUND'.

Category of items
> Each item will have a specific category from the list below:
> * Cards-
>   * College ID Card
>   * ATM Card
>   * Driver's License
>   * Aadhar Card
>   * Any other card
> * Electronic Devices-
>   * Mobile Phones
>   * Laptop
>   * Smart Watch
>   * Charger
>   * Any other electronic device
> * Books-
>   * Notebooks/ Registers
>   * Book
>   * Novel
>   * Any other book
> * Others-
>   * Bottles
>   * Wallets
>   * Bags
>   * Any other item
