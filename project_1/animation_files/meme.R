
  library(magick)
  
  main_header_1 = image_blank(width = 400,
                              height = 400,
                              color = "#000000") %>%  
    image_annotate(text = "whats it like when you start stats 220",
                   size = 20, gravity = "center",
                   color = "white", font="Times") %>% 
    image_annotate("(as a beginner)", size = 20, color = "white", font="Comic Sans",
                   location = "+130+320")
  
  main_header_2 = image_blank(width = 400,
                              height = 400,
                              color = "#000000") %>% 
    image_annotate(text = "what its probably like when you finish stats 220",
                   size = 20, gravity = "center", color = "white", font="Times") %>% image_annotate("(as a pro)", size = 20, color = "white", font="Comic Sans", location = "+155+320")

  cat_01 <- image_scale(image_read(path = "https://mypersiancat.com/wp-content/uploads/2020/10/121032692_354013039279835_8100200820807336949_n.jpg"),400)
  
  b_frame_1 <- image_annotate(cat_01, "ogod. coding in a stats class??",
                              size = 20, color = "blue",
                              font="Comic Sans", degrees = 35,
                              location = "+150+80")
  
  b_frame_2 <- image_annotate(b_frame_1, "how do i merge image",
                              size = 23, color = "green",
                              font="Comic Sans", degrees = -36,
                              location = "+50+290")
  
  b_frame_3 <- image_annotate(b_frame_2, "help why is this not working",
                              size = 18, color = "red", font="Comic Sans",)

  
  beginner_animation = c(b_frame_1, b_frame_2, b_frame_3) %>% image_animate(fps=1)
  
  cat_02 <- image_crop(image_scale(image_read(path = "https://i.redd.it/4aldq67xw5e31.jpg"),500),400)
  
  e_frame1 <- image_annotate(cat_02, "you have reached max level.",
                             size = 20, color = "green", font="Comic Sans",
                             degrees = 0, location = "+80+40", boxcolor="black")
  
  e_frame2 <- image_annotate(e_frame1, "level 100!!!",
                             size = 20, color = "green",
                             font="Comic Sans", degrees = 0,
                             location = "+160+70", boxcolor="black")
  
  e_frame3 <- image_annotate(e_frame2, "your new rank is statistics god!",
                             size = 20, color = "green",
                             font="Comic Sans", degrees = 0,
                             location = "+70+110", boxcolor="black")
  
  e_frame3 <- image_annotate(e_frame2, "here are your key skills highlighted.",
                             size = 20, color = "green", font="Comic Sans",
                             degrees = 0, location = "+30+110", boxcolor="black")
  
  e_frame4 <- image_annotate(e_frame3, "1. i can code!!", size = 20,
                             color = "green", font="Mono", degrees = 0,
                             location = "+50+150", boxcolor="white")
  
  e_frame5 <- image_annotate(e_frame4, "2. i can create f a n c y plots using r!!.",
                             size = 20, color = "green", font="Georgia", degrees = 0,
                             location = "+50+190", boxcolor="white")
  
  e_frame6 <- image_annotate(e_frame5, "3. i can use apis to scrape data :O.",
                             size = 20, color = "green", font="Georgia", degrees = 0,
                             location = "+50+230", boxcolor="white")
  
  e_frame7 <- image_annotate(e_frame6, "4. i can use special tools to do special things.",
                             size = 16, color = "green", font="Georgia", degrees = 0,
                             location = "+50+270", boxcolor="white")
  
  e_frame8 <- image_annotate(e_frame7, "5. i can perceptively analyse data.",
                             size = 20, color = "green", font="Georgia",
                             degrees = 0, location = "+50+300", boxcolor="white")
  
  expert_animation = c(e_frame1, e_frame2, e_frame3, e_frame4, e_frame5, e_frame6, e_frame7 , e_frame8) %>% image_animate(fps=1)
  
  c(main_header_1, beginner_animation, main_header_2, expert_animation) %>% image_animate(fps=1)
  
