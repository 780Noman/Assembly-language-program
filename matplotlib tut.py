#-------------------------------------------------------------------------------
# Name:        module1
# Purpose:
#
# Author:      DELL
#
# Created:     02/12/2023
# Copyright:   (c) DELL 2023
# Licence:     <your licence>
#-------------------------------------------------------------------------------

def main():
    pass

if __name__ == '__main__':
    main()
import numpy as np
from matplotlib import pyplot as plt
x=np.arange(1,11)
print(x)
y=2*x
y2=3*x
print(y)
##plt.plot(x,y,color='g',linestyle='--',linewidth=2)
##plt.plot(x,y2,color='r',linestyle=':',linewidth=3)
##plt.grid(True)
##plt.title("linear line plot")
##plt.xlabel("x-axis")
##plt.ylabel("y-axis")


#create subplot
#plt.subplot(row,col,index)
##plt.subplot(1,2,1)
##plt.plot(x,y,color='g',linestyle='--',linewidth=2)
##plt.subplot(1,2,2)
##plt.plot(x,y2,color='r',linestyle=':',linewidth=2)
##plt.show()


#barplot
##student={"bobi":34,"Sami":56,'ali':78}
##
##name=list(student.keys())
##print(name)
##values=list(student.values())
##print(values)
##plt.barh(name,values,color='r')
##plt.title("bar plot")
##plt.xlabel("names")
##plt.ylabel("values")
##plt.grid(True)
##
##plt.show()

'''scatter plot'''
#must have same num of values in variable then not error occur
##plt.scatter(x,y,c='r',marker='*',s=100)
##plt.scatter(x,y2,c='y',marker='.',s=300)
###you can also create subplot of scatter plot
##plt.show()


'''creating histogram of frequency occurence of number'''
##data=[3,4,5,2,2,4,6,2,4,6,6,2,5,3]
##plt.hist(data,color='r',bins=3)
##plt.show()


'''create boxplot'''
##one=[1,2,3,4,5,6,7,8,9]
##two=[1,2,3,4,5,4,3,2,1]
##three=[6,7,8,9,8,7,6,5,4]
##data=list([one,two,three])
##plt.boxplot(data)
##plt.show()

'''create violin plot'''
##one=[1,2,3,4,5,6,7,8,9]
##two=[1,2,3,4,5,4,3,2,1]
##three=[6,7,8,9,8,7,6,5,4]
##data=list([one,two,three])
##plt.violinplot(data,showmedians=True)
##plt.show()

'''create pie chart'''
fruits=['Mango','apple','banana']
quantity=[45,64,23]
plt.pie(quantity,labels=fruits)

'''change the color of pie chart with percent val'''
plt.pie(quantity,labels=fruits,autopct='%0.1f%%',colors=['green','red','blue'])
plt.show()

'''create donut chart'''
plt.pie(quantity,labels=fruits,autopct='%0.1f%%',colors=['green','red','blue'],radius=2)
plt.pie([1],colors=['w'],radius=1)
plt.show()
