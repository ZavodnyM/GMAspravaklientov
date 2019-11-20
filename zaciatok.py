import tkinter
w = 1280
h = 720
canvas=tkinter.Canvas(width=w,height=h)
canvas.pack()
from random import *

print("starting application")

zmazatKlientaOkno = False
def detailklienta():
      global button1, button2, button3, button4, button5, button6, ucet,zmazatKlientaOkno
      canvas.delete('all')
      button1.destroy()
      button2.destroy()
      if (zmazatKlientaOkno==True):
            button5.destroy()
            button6.destroy() 
      button3 = tkinter.Button(text='UPRAVIŤ KLIENTA',command = formular,height = 3,width = 15)
      button3.pack()
      button3.place(x=w//10*8,y=20)
      button4 = tkinter.Button(text='ZMAZAŤ KLIENTA',command = okno,height = 3,width = 15)
      button4.pack()
      button4.place(x=w//10*9,y=20)
      #...
      canvas.create_text(w//10,h//10,text='DETAIL KLIENTA',font='arial 15')
      canvas.create_rectangle(w//22,h//2,w//2-3,700,width = 2)
      canvas.create_text(w//10,h/9*4,text='Zoznam účtov',font='arial 15')
      ucet = tkinter.Button(text='nazov účet',font='arial 8',command = detailucta,height = 2,width = 95)
      ucet.pack()
      ucet.place(x=w//22,y=h//2+1)
      
      
def formular():
      global button1, button2, button3, button4, button5, button6, ucet
      canvas.delete('all')
      button1.destroy()
      button2.destroy()
      #...
      canvas.create_text(w//2,h//10,text='FORMULÁR',font='arial 15')
      
      
def okno():
      global button1, button2, button3, button4, button5, button6, ucet,zmazatKlientaOkno
      zmazatKlientaOkno = True
      ucet.destroy()
      button5 = tkinter.Button(text='ANO',font='arial 10',command = formular,height = 1,width = 10)
      button5.pack()
      button5.place(x=w//3+20,y=h//2+25)
      button6 = tkinter.Button(text='SPAŤ',font='arial 10',command = detailklienta,height = 1,width = 10)
      button6.pack()
      button6.place(x=w//2+100,y=h//2+25)
 
      #...
      canvas.create_rectangle(w//6*2,h//10*4,w//6*4,h//10*6,width = 4,fill='white')
      canvas.create_text(w//6*3,h//10*4+30,text='Ste si istý ?',font='arial 15')
      
      
def detailucta():
      canvas.create_rectangle(720,h//2,1200,700,width = 2)
      
      



#...
button1 = tkinter.Button(text='VYTVORIŤ KLIENTA',font='arial 12',command = formular,height = 3,width = 20)
button1.pack()
button1.place(x=w//4,y=h//2)

button2 = tkinter.Button(text='DETAIL KLIENTA',font='arial 12',command = detailklienta,height = 3,width = 20)
button2.pack()
button2.place(x=w//4*2.5,y=h//2)







