import tkinter
from tkinter import messagebox, simpledialog
w = 1280
h = 720
canvas=tkinter.Canvas(width=w,height=h,bg="#71CAE7")
canvas.pack()
from random import *

zmazatOkna = False
zmazatbuttony = False
zmazatentry = False
zmazatentry2 = False
zmazatKlientaOkno = False
zmazatUpravit = False
labelMenuImg=0
obrazok = False
existujeklient = False
zmazatlistbox = False



transakcie = []
ucty = []
      
def menu():
      global buttonVytvorit,entryRodne,listboxUcty,listboxObraty,zmazatlistbox, buttondetailuctu,buttonpridatucet,buttonodobratucet,rodne_cislo,buttonNajst, buttonDetail,zmazatOkna, buttonUpravit, buttonZmazat, button5,menuImg,labelMenuImg, obrazok, button6, ucet,zmazatKlientaOkno,zmazatentry2,entryMeno2, entryRodnecislo,entryPriezvisko2,entryRodnecislo2, entryPriezvisko, mail, zmazatentry, buttonspat,buttonulozit, zmazatbuttony
      canvas.delete('all')
      print(zmazatlistbox)
      if (zmazatentry==True):
            entryMeno.destroy()
            entryPriezvisko.destroy()
            entryRodnecislo.destroy()
            buttonspat.destroy()
            buttonulozit.destroy()
      if (zmazatentry2==True):
            entryMeno2.destroy()
            entryPriezvisko2.destroy()
            entryRodnecislo2.destroy()
            buttonspat.destroy()
            buttonulozit2.destroy()
      if (zmazatKlientaOkno==True):
            buttonUpravit.destroy()
            buttonZmazat.destroy()
            button5.destroy()
            button6.destroy()
      if (zmazatbuttony==True):
            buttonspat.destroy()
            buttonUpravit.destroy()
            buttonZmazat.destroy()
            entryRodne.destroy()
            buttonNajst.destroy()
      if (zmazatlistbox==True):
            print('AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA')
            listboxUcty.destroy()
            listboxObraty.destroy()
            buttondetailuctu.destroy()
            buttonpridatucet.destroy()
            buttonodobratucet.destroy()
          
 
      zmazatOkna = True
                 
      buttonVytvorit = tkinter.Button(text='VYTVORIŤ KLIENTA',font="Helvetica 15",command = formular,height = 2,width = 20)
      buttonVytvorit.pack()
      buttonVytvorit.place(x=w//2+50,y=h//2-20)

      buttonDetail = tkinter.Button(text='DETAIL KLIENTA',font="Helvetica 15",command = detailklienta,height = 2,width = 20)
      buttonDetail.pack()
      buttonDetail.place(x=w//4*3+50,y=h//2-20)


      menuImg = tkinter.PhotoImage(master=canvas,file='menu.png')
      labelMenuImg = tkinter.Label(image = menuImg,borderwidth=0)
      labelMenuImgimage = menuImg
      labelMenuImg.pack()
      labelMenuImg.place(x=w//40,y=h//2, anchor="w")
      obrazok = True
      
      
def detailklienta():
      global buttonVytvorit,entryRodne,rodne_cislo,buttonNajst,buttonDetail,zmazatOkna, buttonUpravit, buttonZmazat, button5,obrazok, button6, ucet,zmazatKlientaOkno, entryMeno, entryPriezvisko, entryRodnecislo,entryMeno2,zmazatentry2,entryPriezvisko2,entryRodnecislo2, zmazatentry, buttonspat,buttonulozit, zmazatbuttony, zmazatUpravit

      canvas.delete('all')

      if (zmazatOkna==True):
            buttonVytvorit.destroy()
            buttonDetail.destroy()
            
      
      if (zmazatKlientaOkno==True):
            button5.destroy()
            button6.destroy()

      if (zmazatentry2==True):
            entryMeno2.destroy()
            entryPriezvisko2.destroy()
            entryRodnecislo2.destroy()
            buttonulozit2.destroy()
            buttonspat.destroy()
            
            
      zmazatbuttony = True
      zmazatUpravit = True
      labelMenuImg.config(image='')
      labelMenuImg.destroy()

      entryRodne = tkinter.Entry(width=20,font = "Helvetica 15 bold")
      entryRodne.pack()
      entryRodne.place(x=w//50,y=h//7+5,height=30)

    
      
      buttonNajst = tkinter.Button(text='Nájsť',command = vypis_info,height = 1,width = 5,font="Helvetica 10")
      buttonNajst.pack()
      buttonNajst.place(x=w//5,y=h//7+6)
      
      buttonUpravit = tkinter.Button(text='UPRAVIŤ KLIENTA',command = formular2,height = 2,width = 15,font="Helvetica 10")
      buttonUpravit.pack()
      buttonUpravit.place(x=w//10*7.6,y=20)
      
      buttonZmazat = tkinter.Button(text='ZMAZAŤ KLIENTA',command = zmazanieklienta,height = 2,width = 15,font="Helvetica 10")
      buttonZmazat.pack()
      buttonZmazat.place(x=w//10*8.8,y=20)
      
      canvas.create_text(w//50,h//8,text='DETAIL KLIENTA',font='arial 20',anchor ='w')
      
      canvas.create_text(w//50,h/9*4,text='Zoznam účtov',font='arial 16',anchor ='w')
      
      buttonspat = tkinter.Button(text='SPAŤ',font="Helvetica 10",command = menu,height = 2,width = 10)
      buttonspat.pack()
      buttonspat.place(x=w//50,y=20)






def formular():
      global buttonVytvorit, buttonDetail,buttonNajst, buttonUpravit, buttonZmazat, button5, button6,obrazok, ucet,zmazatKlientaOkno, entryMeno, entryPriezvisko, entryRodnecislo,entryMeno2,zmazatentry2,entryPriezvisko2, entryRodnecislo2,zmazatentry, buttonspat,buttonulozit, zmazatbuttony, zmazatUpravit

      canvas.delete('all')
      buttonVytvorit.destroy()
      buttonDetail.destroy()
      

      if (zmazatUpravit==True):
            buttonUpravit.destroy()
            buttonZmazat.destroy()
      if (obrazok==True): 
            labelMenuImg.config(image='')
            labelMenuImg.destroy()
            
      
      zmazatentry = True
      canvas.create_text(w//10*4-10,h//20*2,text='FORMULÁR',font='Arial 20')
      
      entryMeno = tkinter.Entry(width=40,font = "Helvetica 15 bold")
      entryMeno.pack()
      entryMeno.place(x=w//3,y=h//20*4,height=30)
      canvas.create_text(w//3-15,h//20*4+15,text='Meno:',font='Arial 15',anchor="e")
      
      entryPriezvisko = tkinter.Entry(width=40,font = "Helvetica 15 bold")
      entryPriezvisko.pack()
      entryPriezvisko.place(x=w//3,y=h//20*5,height=30)
      canvas.create_text(w//3-15,h//20*5+15,text='Priezvisko:',font='Arial 15',anchor="e")
      
      entryRodnecislo = tkinter.Entry(width=40,font = "Helvetica 15 bold")
      entryRodnecislo.pack()
      entryRodnecislo.place(x=w//3,y=h//20*6,height=30)
      canvas.create_text(w//3-15,h//20*6+15,text='Rodné číslo:',font='Arial 15',anchor="e")
      
      buttonspat = tkinter.Button(text='SPAŤ',font="Helvetica 10",command = menu,height = 2,width = 10)
      buttonspat.pack()
      buttonspat.place(x=w//50,y=20)
      
      buttonulozit = tkinter.Button(text='ULOŽIŤ',font="Helvetica 10",command = pridaj_klienta,height = 2,width = 10)
      buttonulozit.pack()
      buttonulozit.place(x=w//50*31.2,y=h//20*7.5)


def pridaj_klienta():
      global uctyLockSubor, existujeklient
##      if(os.path.exists("pokus3_LOCK.txt")):
##            canvas.after(2000,a)
##      elif(os.path.exists("pokus3_LOCK.txt")==False):
##            uctyLockSubor = open("pokus3_LOCK.txt", "w+")

      
      subor = open('KLIENTI.txt','r')
      riadky = subor.readlines()
      print(riadky)
      print(riadky[0])
      subor.close()

      riadok = riadky[len(riadky)-1]

      print(riadok)
      cislo = riadok.split(';')
      print(cislo[0])

      ip = int(cislo[0])+(1)
      print(ip)
                    
      meno1 = entryMeno.get()
      prie1 = entryPriezvisko.get()
      rodne1 = entryRodnecislo.get()
      print(meno1)
      print(prie1)

      subor = open('KLIENTI.txt','a')
      subor.write('\n'+str(ip)+';'+meno1+';'+prie1+';'+rodne1)
      subor.close()


      num_lines = sum(1 for line in open('KLIENTI.txt'))
      pocetriadkov = num_lines - (1)
      pocetriadkov_str = str(pocetriadkov)
      print(pocetriadkov_str)

      f = open('KLIENTI.txt')
      lines = f.readlines()
      lines[0] = pocetriadkov_str+"\n"

      f = open('KLIENTI.txt',"w")
      f.writelines(lines)
      f.close()

      uspesnevytvorenie()
            

##            uctyLockSubor.close()
##            os.remove("pokus3_LOCK.txt")

      
      

def vypis_info():
      global ip,meno,priezvisko,rodnecislo,pokus, existujeklient, ucty,zmazatlistbox, listboxUcty, listboxObraty, buttondetailuctu,buttonpridatucet,buttonodobratucet
      rodne_cislo = entryRodne.get()
      print(rodne_cislo)

      if (zmazatlistbox==True):
            print('AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA')
            listboxUcty.destroy()
            listboxObraty.destroy()
            buttondetailuctu.destroy()
            buttonpridatucet.destroy()
            buttonodobratucet.destroy()
            
      zmazatlistbox = False
      zmazatlistbox = True
      
      canvas.delete('all')
      canvas.create_text(w//50,h//8,text='DETAIL KLIENTA',font='arial 20',anchor ='w')
      canvas.create_text(w//50,h/9*4,text='Zoznam účtov',font='arial 16',anchor ='w')

      
      subor = open('KLIENTI.txt','r')

      for i in range (int(subor.readline())):
            riadok = subor.readline()
            pozicia = riadok.find(rodne_cislo)

            if int(pozicia) > 0:
                  print(riadok)
                  rozdelenie = riadok.split(';')

                  ip = rozdelenie[0]
                  meno = rozdelenie[1]
                  priezvisko = rozdelenie[2]
                  rodnecislo = rozdelenie[3]

                  print(meno)
      subor.close()
            
      canvas.create_text(w//50,h//4.5,text='id:               '+ip,font='arial 16',anchor ='w')
      canvas.create_text(w//50,h//4.5+25,text='meno:         '+meno,font='arial 16',anchor ='w')
      canvas.create_text(w//50,h//4.5+50,text='prezvisko:   '+priezvisko,font='arial 16',anchor ='w')
      canvas.create_text(w//50,h//4.5+90,text='rodné čislo: '+rodnecislo,font='arial 16',anchor ='w')
      
            

      listboxUcty = tkinter.Listbox()
      listboxUcty.config(width=50, font='arial 12')
      listboxUcty.place(x = w//5-8,y = h//2+100, anchor='c')

      listboxObraty = tkinter.Listbox()
      listboxObraty.config(width=50, font='arial 12')
      listboxObraty.place(x = w//2+140,y = h//2+100, anchor='c')

      buttondetailuctu = tkinter.Button(text='Detail účtu',font="Helvetica 10",command = ucet_detail,height = 2,width = 10)
      buttondetailuctu.pack()
      buttondetailuctu.place(x = w//50-4,y = h//2+210)

      buttonpridatucet = tkinter.Button(text='Pridať účet',font="Helvetica 10",command = pridatucet,height = 2,width = 10)
      buttonpridatucet.pack()
      buttonpridatucet.place(x = w//50+96,y = h//2+210)

      buttonodobratucet = tkinter.Button(text='Odobrať účet',font="Helvetica 10",command = None,height = 2,width = 10)
      buttonodobratucet.pack()
      buttonodobratucet.place(x = w//50+196,y = h//2+210)

      

      
      subor = open('UCTY.txt','r')
      print(ip)
      ucty = []
      for i in range(int(subor.readline())):
            riadok = subor.readline()
            print(riadok)
            rozdelenie = riadok.split(';')
            ip_uctu = rozdelenie[0]
            ip_klienta = rozdelenie[1]
            cislo_uctu = rozdelenie[2]
            pm = rozdelenie[3]
            stav = rozdelenie[4]
            print("ip_uctu: ",ip_uctu)
            print("ip_clienta: ",ip_klienta)
            print("ip_main: ",ip)

            
            if int(ip_klienta) == int(ip):
                  ucty.append(cislo_uctu)
      subor.close()
      print(ucty)

      for acc in sorted(ucty):
          listboxUcty.insert(tkinter.END, acc)




      
def ucet_detail():
      global cislo_uctu, transakcie, trn
      cislo_uctu = listboxUcty.get('active')
      print(cislo_uctu)
    
    ####

      subor = open('UCTY.txt','r')
      
      for i in range (int(subor.readline())):
            riadok = subor.readline()
            rozdelenie = riadok.split(';')
            if str(rozdelenie[2]) == str(cislo_uctu) :
                  ip_uctu = rozdelenie[0]
                  print(ip_uctu)
      subor.close()



      listboxObraty.delete(0,tkinter.END)
      transakcie = []
      trn = open('TRANSAKCIE_UCTY.txt','r')

      for i in range(int(trn.readline())):
          riadok_trn = trn.readline()
          rozdelenie_trn = riadok_trn.split(';')

          trn_ip = rozdelenie_trn[0]
          trn_typ = rozdelenie_trn[1]
          trn_sposob = rozdelenie_trn[2]
          trn_id_cli = rozdelenie_trn[3]
          trn_id_uctu = rozdelenie_trn[4]
          trn_suma = rozdelenie_trn[5]
          trn_id_suv = rozdelenie_trn[6]
          trn_datum = rozdelenie_trn[7]

##        print(trn_datum)
            
          if int(trn_id_uctu) == int(ip_uctu):
            transakcie.append(trn_suma)

      trn.close()
      print(transakcie)

      for tran in sorted(transakcie):
          listboxObraty.insert(tkinter.END, tran)


      
      
def ulozit():
      canvas.create_rectangle(101,100,144,574)



def edit_klienta():
      global ip, entryMeno2, entryPriezvisko2,entryRodnecislo2,uspesneeditovanie
      subor = open('KLIENTI.txt','r')
      
      for i in range (int(subor.readline())):
            riadok = subor.readline()
            rozdelenie = riadok.split(';')

            if rozdelenie[0] == ip:
                  riadok_cislo = i+1
      subor.close()


      novemeno = entryMeno2.get()
      noveprie = entryPriezvisko2.get()
      novecislo = entryRodnecislo2.get()


      f = open('KLIENTI.txt')
      lines = f.readlines()
      lines[riadok_cislo] = ip+";"+novemeno+";"+noveprie+";"+novecislo

      f = open('KLIENTI.txt',"w")
      f.writelines(lines)
      f.close()

      uspesneeditovanie()
      




def formular2():
      global buttonVytvorit,ip,pokus,rodnecislo, buttondetailuctu,buttonpridatucet,buttonodobratucet,zmazatlistbox,listboxUcty,listboxObraty,meno,priezvisko,rodne_cislo,buttonNajst,rodnecislo,entryRodne, buttonDetail,zmazatOkna, buttonUpravit, buttonZmazat, button5, button6,obrazok, ucet,zmazatKlientaOkno, entryMeno, entryPriezvisko, entryRodnecislo,zmazatentry2,entryMeno2, entryPriezvisko2,entryRodnecislo2,zmazatentry, buttonspat,buttonulozit,buttonulozit2, zmazatbuttony, zmazatUpravit
      canvas.delete('all')
      if (zmazatUpravit==True):
            buttonUpravit.destroy()
            buttonZmazat.destroy()
            entryRodne.destroy()
            buttonNajst.destroy()

      
      listboxUcty.destroy()
      listboxObraty.destroy()
      buttondetailuctu.destroy()
      buttonpridatucet.destroy()
      buttonodobratucet.destroy()
            

      zmazatentry2 = True
      entryMeno2 = tkinter.Entry(width=40,font = "Helvetica 15 bold")
      entryMeno2.pack()
      entryMeno2.place(x=w//3,y=h//20*4,height=30)
      canvas.create_text(w//3-15,h//20*4+15,text='Meno:',font='Arial 15',anchor="e")

      
      entryPriezvisko2 = tkinter.Entry(width=40,font = "Helvetica 15 bold")
      entryPriezvisko2.pack()
      entryPriezvisko2.place(x=w//3,y=h//20*5,height=30)
      canvas.create_text(w//3-15,h//20*5+15,text='Priezvisko:',font='Arial 15',anchor="e")
      
      entryRodnecislo2 = tkinter.Entry(width=40,font = "Helvetica 15 bold")
      entryRodnecislo2.pack()
      entryRodnecislo2.place(x=w//3,y=h//20*6,height=30)
      canvas.create_text(w//3-15,h//20*6+15,text='Rodné číslo:',font='Arial 15',anchor="e")

      

      
      buttonulozit2 = tkinter.Button(text='ULOŽIŤ',font="Helvetica 10",command = edit_klienta,height = 2,width = 10)
      buttonulozit2.pack()
      buttonulozit2.place(x=w//50*31.2,y=h//20*7.5)
      
      buttonspat = tkinter.Button(text='SPAŤ',font="Helvetica 10",command = menu,height = 2,width = 10)
      buttonspat.pack()
      buttonspat.place(x=w//50,y=20)


                                  
def pridatucet():
      global radiobutton_widget1,radiobutton_widget2,variable,v,vv, value
      parent_widget = tkinter.Tk()
      v = tkinter.IntVar()
      parent_widget.geometry('150x100')
      v.set(1)
      # need to use v.set and v.get to
      # set and get the value of this variable

      radiobutton_widget1 = tkinter.Radiobutton(parent_widget, text="Radiobutton 1", variable=v, value=1)
      radiobutton_widget2 = tkinter.Radiobutton(parent_widget, text="Radiobutton 2", variable=v, value=2)
      radiobutton_widget1.pack()
      radiobutton_widget2.pack()
      
      button_widget = tkinter.Button(parent_widget, text="A Button", command = ahoj)
      button_widget.pack()
      tkinter.mainloop()


def sel():
      selection = "You selected the option " + str(var.get())
      label.config(text = selection)
      
def pridatucet():
      root = Tk()
      var = IntVar()
      R1 = Radiobutton(root, text="Option 1", variable=var, value=1,
                        command=sel)
      R1.pack( anchor = W )

      R2 = Radiobutton(root, text="Option 2", variable=var, value=2,
                        command=sel)
      R2.pack( anchor = W )

      R3 = Radiobutton(root, text="Option 3", variable=var, value=3,
                        command=sel)
      R3.pack( anchor = W)

      label = Label(root)
      label.pack()
      root.mainloop()


def ahoj():
      global radiobutton_widget1,radiobutton_widget2,variable,v,vv, value
      selection = "You selected the option " + str(v.get())
      print(selection)
      
##      print(v.get())
##      print(value)
##      if v.get() == 1:
##            print('JUPIIIIIIIII')
##      elif v.get() == 2:
##            print('YESSSSS')
##      else:
##            None
            
def zmazanieklienta():
    messageBox = messagebox.askquestion("Zmazanie Klienta", "Naozaj chcete vymazať klienta?", icon='warning')
    if messageBox == 'yes':
        vymazat_klienta()
    else:
        None

def uspesnevytvorenie():
    messageBox = messagebox.showinfo("Vytvorenie klienta", "Úspešne ste vytvorili nového klienta")
    if messageBox == 'ok':
          menu()

def uspesneeditovanie():
    messageBox = messagebox.showinfo("Upravenie klienta", "Úspešne ste upravili klienta")
    if messageBox == 'ok':
          None    
      
##def okno():
##      global buttonVytvorit, buttonDetail, buttonUpravit,buttonNajst,buttonZmazat, button5, button6, ucet,zmazatKlientaOkno, entryMeno, entryPriezvisko, entryRodnecislo, zmazatentry,zmazatentry2,entryPriezvisko2,entryRodnecislo2, entryMeno2,buttonspat, zmazatbuttony,buttonulozit
##
##      zmazatKlientaOkno = True
##      
##      button5 = tkinter.Button(text='ANO',font='arial 10',command = vymazat_klienta,height = 1,width = 10)
##      button5.pack()
##      button5.place(x=w//3+20,y=h//2+25)
##      
##      button6 = tkinter.Button(text='SPAŤ',font='arial 10',command = detailklienta,height = 1,width = 10)
##      button6.pack()
##      button6.place(x=w//2+100,y=h//2+25)
## 
##      canvas.create_rectangle(w//6*2,h//10*4,w//6*4,h//10*6,width = 4,fill='white')
##      canvas.create_text(w//6*3,h//10*4+30,text='Ste si istý ?',font='arial 15')
      
      
##def detailucta():
##      canvas.create_rectangle(720,h//2,1200,700,width = 2)
      
def vymazat_klienta():
      global ip
      
      subor = open('KLIENTI.txt','r')
      
      for i in range (int(subor.readline())):
            riadok = subor.readline()
            rozdelenie = riadok.split(';')

            if rozdelenie[0] == ip:
                  riadok_cislo = i+1
                  print(i+1)
                  print(rozdelenie[0])
                  print(riadok)
                  print(riadok_cislo)
                  
      subor.close()
       
      f = open('KLIENTI.txt')
      lines = f.readlines()
      lines[riadok_cislo] = ""

      f = open('KLIENTI.txt',"w")
      f.writelines(lines)
      f.close()


      num_lines = sum(1 for line in open('KLIENTI.txt'))
      pocetriadkov = num_lines - (1)
      pocetriadkov_str = str(pocetriadkov)
      print(pocetriadkov_str)

      f = open('KLIENTI.txt')
      lines = f.readlines()
      lines[0] = pocetriadkov_str+"\n"

      f = open('KLIENTI.txt',"w")
      f.writelines(lines)
      f.close()


menu()


