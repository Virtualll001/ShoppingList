   M S B A M L   `   `   `  ����H  DNakupniSeznam, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:NakupniSeznamNakupniSeznam  5   	       NakupniSeznam.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   -localclr-namespace:NakupniSeznam     5   	   -   5          �Name$  NakupniSeznam��5   	    � Title$ Nákupní seznam��5   	   $	��500��6    $	��420��6-    � WindowStartupLocation$ CenterScreen=�69    � 
ResizeMode$ NoResize=�6^    � Icon$ /favicon.ico��6t   $��25(�6�   ���	#FFBBC4FB$��Gabriola)�6�    � UseLayoutRounding$ False��6�    � WindowStyle$ SingleBorderWindow=�6�   .��5	      � $��10q�6    � RowDefinitions 5
   
   �� 5      $��40 �6   �� 5      $��30 �6   �� 5      $��40 �6   �� 5      $��* �6   �� 5      $��40 �6   .+�5   
   �� $
��Left=�6   $��0��6/   $��Přidat položku: ��6=   $
��Wrap=�6U   $��Bottom=�6i   $��22(�6�   �� 5   
   -   5         ��Name$ obsahTextBox��5      $
��Left=�6(   $��25��6C   $��1��6O   $�� ��6\   $��Center=�6d   $	��300��6   $��0,0,0,0q�6�   $��Segoe UI)�6�   $��12(�6�   $��Center=�6�   �� 5   
   $
��Left=�6   $��2��6/   $��SEZNAM ��6<   $��Center=�6K   �� 5   
   -   5        	 ��Name$	 pridatButton��5      $��Přidat��6'   $��25��68   $��Right=�6D   $��1��6`   $��Center=�6m   $��75��6�   ���	#FF7F90FF$��25(�6�   $��1,-6,1,1q�6�   $
��True��6�   $��0,0,0,2q�6�   ���	#FF445CFD6"  �� 5   
   -   5        
 ��Name$
 seznamListBox��5      $��3��6)   $��0,0,0,0q�66   $��Segoe UI)�6p   $��12(�6�   $
 True��6�   ��6P   �� *	Polozky+6�   �� 5   
   -   5        $	 odebratButton��5      $��Odebrat položku��6(   $��30��6B   $��Center=�6N   $��4��6k   $��Bottom=�6x   $	��150��6�   ���	#FF7F90FF$��1,-5,1,1q�6�   $��0,0,0,3q�6�   ���	#FF445CFD$ False��6�   6  5      5      