# Flutter Parfume App Exercise

This is my Flutter Parfume App exercise. 
Founded the design on Dribbble and trying to clone it to improve my layouting and programming skills. I gonna build the project responsive and compatible with design patterns. I'll also try hard to write clean code. I will update the README file throughout the process. 

![image_processing20200412-25320-1u2o2ez](https://user-images.githubusercontent.com/69268069/219046569-b63578d8-4c76-4bf3-8633-0570e6950cc7.png)

## Day 1
I started the project. Created AppBar, bottomNavigationBar and icons. Then created TextField and customize it (hint text, search icon, fill the inside of Field etc.) Lastly i created a custom widget named MenuBar (If you mind to check it out you can find it in [here](https://github.com/ABDURRAHMANYIGIT/Flutter_Parfume_App/blob/master/lib/pages/menu_bar.dart)) and used it inside of Listview.builder. Instead of manually adding elements to the list, I created a more useful architecture in this way so that it does not cause difficulties in the next designs.

![Screenshot_1676470191](https://user-images.githubusercontent.com/69268069/219052966-a4500eee-e771-4bc4-a72e-3d04c250268c.png)


## Day 2
I created a white container. I also worked on the part where the perfumes are shown, but it doesn't look like the referenced design as you can see below, I will continue to work tomorrow

![Screenshot_1676480264](https://user-images.githubusercontent.com/69268069/219099157-d043bf8b-9870-4a7b-9570-d351483ceaa1.png)

## Day 3
Today i worked on layouting parfume images. I was able to create a [custom widget](https://github.com/ABDURRAHMANYIGIT/Flutter_Parfume_App/blob/master/lib/pages/parfume_list_view.dart) and use it inside of ListView.builder. In this way, I believe that I have created a more accurate architecture for the updates to be made in the list. The sizes are not the same as I found the perfume pictures online. I thought of two solutions for this:  
**_1- Developing an architecture that can adjust the scale of the images in the [custom widget](https://github.com/ABDURRAHMANYIGIT/Flutter_Parfume_App/blob/master/lib/pages/parfume_list_view.dart) I created._**  
**_2- Manually resize the images to the same size._**  
Tomorrow I will try the first way first because it is more programming prone if not I will try the second way.

https://user-images.githubusercontent.com/69268069/219652242-0aa33e19-12b3-44a6-bca0-cfcd96398df7.mp4

## Day 4
Today I first solved the problem from yesterday that the images are not the same size. I got around this problem by using the fit:BoxFit.contain property of the FittedBox widget. Then I created a structure where I can follow the user's actions using the GestureDetector widget. I used this in a structure that transfers the selected perfume to the detail page when the area where the perfumes are displayed is touched. I provided the navigation between the pages with Navigator. On the detail page, I resized the perfume image using FittedBox and added BoxShadow and blur to the back of the image to make it more visible and stand out from the background. My goal for tomorrow is to make the detail page view I created dynamic by creating an architecture like I did in the previous days. I aim to use a single code for all perfumes by making the prototype code of the detail page a reusable widget. I think I can't express what I want to do in terms of terms, since I've only just started learning it, I'm sorry. If I couldn't explain what I'm talking about, you can check it out for yourself!


https://user-images.githubusercontent.com/69268069/219901504-98232d8a-80b3-4837-a9b0-4d5680d0eb31.mp4


