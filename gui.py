
from tkinter import *
from tkinter import ttk
import tkinter as tk
import subprocess as sub

WINDOW_SIZE = "600x400"

root = tk.Tk()
root.geometry(WINDOW_SIZE)

tk.Button(root, text="Push me!", command=lambda: sub.call('./start.sh', shell=True)).pack()

root.mainloop()