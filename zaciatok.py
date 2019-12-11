import tkinter
w = 1280
h = 720
canvas=tkinter.Canvas(width=w,height=h,bg="#71CAE7")
canvas.pack()
from random import *

zmazatbuttony = False
zmazatentry = False
zmazatentry2 = False
zmazatKlientaOkno = False
zmazatUpravit = False
labelMenuImg=0
obrazok = False

      
def menu():
      global button1, button2, button3, button4, button5,menuImg,labelMenuImg, obrazok, button6, ucet,zmazatKlientaOkno,zmazatentry2,meno2, rodnecislo,priezvisko2,rodnecislo2, priezvisko, mail, zmazatentry, buttonspat,buttonulozit, zmazatbuttony
      canvas.delete('all')
      if (zmazatentry==True):
            meno.destroy()
            priezvisko.destroy()
            rodnecislo.destroy()
            buttonspat.destroy()
            buttonulozit.destroy()
      if (zmazatentry2==True):
            meno2.destroy()
            priezvisko2.destroy()
            rodnecislo2.destroy()
            buttonspat.destroy()
            buttonulozit.destroy()
      if (zmazatKlientaOkno==True):
            button3.destroy()
            button4.destroy()
            button5.destroy()
            button6.destroy()
      if (zmazatbuttony==True):
            buttonspat.destroy()
            button3.destroy()
            button4.destroy()
            
                 
      button1 = tkinter.Button(text='VYTVORIŤ KLIENTA',font="Helvetica 15",command = formular,height = 2,width = 20)
      button1.pack()
      button1.place(x=w//2+50,y=h//2-20)

      button2 = tkinter.Button(text='DETAIL KLIENTA',font="Helvetica 15",command = detailklienta,height = 2,width = 20)
      button2.pack()
      button2.place(x=w//4*3+50,y=h//2-20)

      menuImg = tkinter.PhotoImage(master=canvas,file='menu.png')
      labelMenuImg = tkinter.Label(image = menuImg,borderwidth=0)
      labelMenuImgimage = menuImg
      labelMenuImg.pack()
      labelMenuImg.place(x=w//40,y=h//2, anchor="w")
      obrazok = True
      
      
def detailklienta():
      global button1, button2, button3, button4, button5,obrazok, button6, ucet,zmazatKlientaOkno, meno, priezvisko, rodnecislo,meno2,zmazatentry2,priezvisko2,rodnecislo2, zmazatentry, buttonspat,buttonulozit, zmazatbuttony, zmazatUpravit
      canvas.delete('all')
      button1.destroy()
      button2.destroy()
      if (zmazatKlientaOkno==True):
            button5.destroy()
            button6.destroy()
      zmazatbuttony = True
      zmazatUpravit =True
      labelMenuImg.config(image='')
      labelMenuImg.destroy()
      button3 = tkinter.Button(text='UPRAVIŤ KLIENTA',command = formular2,height = 2,width = 15,font="Helvetica 10")
      button3.pack()
      button3.place(x=w//10*7.6,y=20)
      button4 = tkinter.Button(text='ZMAZAŤ KLIENTA',command = okno,height = 2,width = 15,font="Helvetica 10")
      button4.pack()
      button4.place(x=w//10*8.8,y=20)
      #...
      canvas.create_text(w//50,h//8,text='DETAIL KLIENTA',font='arial 20',anchor ='w')
      canvas.create_rectangle(w//50,h//2,w//2-3,700,width = 2)
      canvas.create_text(w//50,h/9*4,text='Zoznam účtov',font='arial 16',anchor ='w')
      #ucet = tkinter.Button(text='nazov účet',font='arial 8',command = detailucta,height = 2,width = 95)
      #ucet.pack()
      #ucet.place(x=w//22,y=h//2+1)
      buttonspat = tkinter.Button(text='SPAŤ',font="Helvetica 10",command = menu,height = 2,width = 10)
      buttonspat.pack()
      buttonspat.place(x=w//50,y=20)
      
      
def formular():
      global button1, button2, button3, button4, button5, button6,obrazok, ucet,zmazatKlientaOkno, meno, priezvisko, rodnecislo,meno2,zmazatentry2,priezvisko2, rodnecislo2,zmazatentry, buttonspat,buttonulozit, zmazatbuttony, zmazatUpravit
      canvas.delete('all')
      button1.destroy()
      button2.destroy()
      if (zmazatUpravit==True):
            button3.destroy()
            button4.destroy()
      if (obrazok==True):
            labelMenuImg.config(image='')
            labelMenuImg.destroy()
            
      
      #...
      zmazatentry = True
      canvas.create_text(w//10*4-10,h//20*2,text='FORMULÁR',font='Arial 20')
      meno = tkinter.Entry(width=40,font = "Helvetica 15 bold")
      meno.pack()
      meno.place(x=w//3,y=h//20*4,height=30)
      canvas.create_text(w//3-15,h//20*4+15,text='Meno:',font='Arial 15',anchor="e")
      priezvisko = tkinter.Entry(width=40,font = "Helvetica 15 bold")
      priezvisko.pack()
      priezvisko.place(x=w//3,y=h//20*5,height=30)
      canvas.create_text(w//3-15,h//20*5+15,text='Priezvisko:',font='Arial 15',anchor="e")
      rodnecislo = tkinter.Entry(width=40,font = "Helvetica 15 bold")
      rodnecislo.pack()
      rodnecislo.place(x=w//3,y=h//20*6,height=30)
      canvas.create_text(w//3-15,h//20*6+15,text='Rodné číslo:',font='Arial 15',anchor="e")
      #...
      
      buttonspat = tkinter.Button(text='SPAŤ',font="Helvetica 10",command = menu,height = 2,width = 10)
      buttonspat.pack()
      buttonspat.place(x=w//50,y=20)
      buttonulozit = tkinter.Button(text='ULOŽIŤ',font="Helvetica 10",command = ulozit,height = 2,width = 10)
      buttonulozit.pack()
      buttonulozit.place(x=w//50*31.2,y=h//20*7.5)

def ulozit():
      canvas.create_rectangle(450,450,500,500)



def formular2():
      global button1, button2, button3, button4, button5, button6,obrazok, ucet,zmazatKlientaOkno, meno, priezvisko, rodnecislo,zmazatentry2,meno2, priezvisko2,rodnecislo2,zmazatentry, buttonspat,buttonulozit, zmazatbuttony, zmazatUpravit
      canvas.delete('all')
      if (zmazatUpravit==True):
            button3.destroy()
            button4.destroy()

      zmazatentry2 = True
      meno2 = tkinter.Entry(width=40,font = "Helvetica 15 bold")
      meno2.pack()
      meno2.place(x=w//3,y=h//20*4,height=30)
      canvas.create_text(w//3-15,h//20*4+15,text='Meno:',font='Arial 15',anchor="e")
      priezvisko2 = tkinter.Entry(width=40,font = "Helvetica 15 bold")
      priezvisko2.pack()
      priezvisko2.place(x=w//3,y=h//20*5,height=30)
      canvas.create_text(w//3-15,h//20*5+15,text='Priezvisko:',font='Arial 15',anchor="e")
      rodnecislo2 = tkinter.Entry(width=40,font = "Helvetica 15 bold")
      rodnecislo2.pack()
      rodnecislo2.place(x=w//3,y=h//20*6,height=30)
      canvas.create_text(w//3-15,h//20*6+15,text='Rodné číslo:',font='Arial 15',anchor="e")
      #...
      buttonulozit = tkinter.Button(text='ULOŽIŤ',font="Helvetica 10",command = ulozit,height = 2,width = 10)
      buttonulozit.pack()
      buttonulozit.place(x=w//50*31.2,y=h//20*7.5)
      buttonspat = tkinter.Button(text='SPAŤ',font="Helvetica 10",command = menu,height = 2,width = 10)
      buttonspat.pack()
      buttonspat.place(x=w//50,y=20)
      

      
def okno():
      global button1, button2, button3, button4, button5, button6, ucet,zmazatKlientaOkno, meno, priezvisko, rodnecislo, zmazatentry,zmazatentry2,priezvisko2,rodnecislo2, meno2,buttonspat, zmazatbuttony,buttonulozit
      zmazatKlientaOkno = True
      button5 = tkinter.Button(text='ANO',font='arial 10',command = menu,height = 1,width = 10)
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
      



menu()



