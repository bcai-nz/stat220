# bcai971
# stat 220 lab 01

# creating meme panels
# first, initialize a square that is 400px high by 400px wide
# then add text positioned in the center 
# then with a new pipe (merge into), create some more text to go at the bottom.

library(magick)

main_header_1 = image_blank(width = 400, height = 400,  color = "#000000") %>%              image_annotate(text = "whats it like when you start stats 220", size = 20, gravity = "center", color = "white", font="Times") %>% image_annotate("(as a beginner)", size = 20, color = "white", font="Comic Sans", location = "+130+320")

#second caption (with similar steps)
main_header_2 = image_blank(width = 400, height = 400, color = "#000000") %>% image_annotate(text = "what its probably like when you finish stats 220", size = 20, gravity = "center", color = "white", font="Times") %>% image_annotate("(as a pro)", size = 20, color = "white", font="Comic Sans", location = "+155+320")

# creation of animations begin below.
# start of first animation
# first, we can create a new object with a path to a image link and a scale of 400px.

# as inline code with nesting:
cat_01 <- image_scale(image_read(path = "https://mypersiancat.com/wp-content/uploads/2020/10/121032692_354013039279835_8100200820807336949_n.jpg"),400)

# with the use of piping:
# cat_01 = image_read(path = "https://mypersiancat.com/wp-content/uploads/2020/10/121032692_3   54013039279835_8100200820807336949_n.jpg") %>% image_scale(400)

# next create frames, each frame builds on top of the previous one and adds more text.
# with piping this would probably be convoluted and unnecessarily complex so i am keeping it as is.

b_frame_1 <- image_annotate(cat_01, "ogod. coding in a stats class??", size = 20, color = "blue", font="Comic Sans", degrees = 35, location = "+150+80")

b_frame_2 <- image_annotate(b_frame_1, "how do i merge image", size = 23, color = "green", font="Comic Sans", degrees = -36, location = "+50+290")

b_frame_3 <- image_annotate(b_frame_2, "help why is this not working", size = 18, color = "red", font="Comic Sans", degrees = 0)

b_frame_4 <- image_annotate(b_frame_3, "this is so hard.. ):", size = 1, color = "yellow", font="Comic Sans", degrees = 0,location="+190+300")

# for these frames, link them up using something similar to an array, before calling
# the image animate command to make the image 'animated'.

# with piping (first create an array of frames before animating)

beginner_animation = c(b_frame_1, b_frame_2, b_frame_3, b_frame_4) %>% image_animate(fps=1)

# with objects (assign an variable to the array before then assigning a variable to animate before calling.

# beginner_frames = c(b_frame_1, b_frame_2, b_frame_3, b_frame_4)
# beginner_animation = image_animate(beginner_frames, fps=1)
# beginner_animation

# end of first animation, second animation is largely similar but with more frames.

# start of second animation (follows same steps as the first animation)

cat_02 <- image_crop(image_scale(image_read(path = "https://i.redd.it/4aldq67xw5e31.jpg"),500),400)

e_frame1 <- image_annotate(cat_02, "you have reached max level.", size = 20, color = "green", font="Comic Sans", degrees = 0, location = "+80+40", boxcolor="black")

e_frame2 <- image_annotate(e_frame1, "level 100!!!", size = 20, color = "green", font="Comic Sans", degrees = 0, location = "+160+70", boxcolor="black")

e_frame3 <- image_annotate(e_frame2, "your new rank is statistics god!", size = 20, color = "green", font="Comic Sans", degrees = 0, location = "+70+110", boxcolor="black")

e_frame3 <- image_annotate(e_frame2, "here are your key skills highlighted.", size = 20, color = "green", font="Comic Sans", degrees = 0, location = "+30+110", boxcolor="black")

e_frame4 <- image_annotate(e_frame3, "1. i can code!!", size = 20, color = "green", font="Mono", degrees = 0, location = "+50+150", boxcolor="white")

e_frame5 <- image_annotate(e_frame4, "2. i can create f a n c y plots using r!!.", size = 20, color = "green", font="Georgia", degrees = 0, location = "+50+190", boxcolor="white")

e_frame6 <- image_annotate(e_frame5, "3. i can use apis to scrape data :O.", size = 20, color = "green", font="Georgia", degrees = 0, location = "+50+230", boxcolor="white")

e_frame7 <- image_annotate(e_frame6, "4. i can use special tools to do special things.", size = 16, color = "green", font="Georgia", degrees = 0, location = "+50+270", boxcolor="white")

e_frame8 <- image_annotate(e_frame7, "5. i can perceptively analyse data.", size = 20, color = "green", font="Georgia", degrees = 0, location = "+50+300", boxcolor="white")

expert_animation = c(e_frame1, e_frame2, e_frame3, e_frame4, e_frame5, e_frame6, e_frame7 , e_frame8) %>% image_animate(fps=1)

a <- c(beginner_animation , expert_animation)
a
# end of second animation

# putting it together
# displaying the animation - could use nesting, objects or piping.

# using objects
# complete_anim = c(main_header_1, beginner_animation, main_header_2, expert_animation)
# image_animate(complete_anim, fps=1)

# inline nested code 
# image_animate(c(main_header_1, beginner_animation, main_header_2, expert_animation), fps=1)

# with piping
c(main_header_1, beginner_animation, main_header_2, expert_animation) %>% image_animate(fps=1)

# miscellaneous comments that might be useful later on while i am developing the animation
# (and notes too on some features that i might use after discovering)
# further reading: https://cran.r-project.org/web/packages/magick/vignettes/intro.html

# -- DEBUGGING CODE --

# code for debugging, just to validate that the each component works as intended.
# calling these objects will result in the output of the object with their corresponding animation/panel.

# main_header_1 - a small cat thinking of the things a new student to stats 220 will say
# main_header_2 - a buff cat with a listing of things that a student 
#                 could be good at at after they finish stats 220.
# beginner_animation - debug first animation (small cat)
# expert_animation - debug second animation (expert cat)

# -- MAGICK FEATURES THAT MIGHT BE USEFUL --

# 1. location = "(+/-)x(+/-)y" - might be useful to use later?

# 2. font 
# "sans", "mono", "serif", "Times", "Helvetica", "Trebuchet", "Georgia", 
# "Palatino", "Comic Sans".

# could incorporate usage of different fonts to the text to make it more meme-styled?

# 3. degrees = degrees=n - might also be useful later.

# 4. image_crop - useful because the second image wasn't proportioned correctly leading to the presence of whitespace (rectangle not square) - maybe could write up about this later.



