   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	    BookManagement#   BookManagement.View.LoginView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ^ ZCaliburn.Micro.Platform, Version=3.2.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  5   	   3System&clr-namespace:System;assembly=mscorlib  5   	     � WindowStyle$
  None=�5	   	    � WindowStartupLocation$ CenterScreen=�5
   	    � Title$ 	LoginView��5   	   $	��250��6   $	��350��6(    � 	Resources 5         Width480��%%   &	        X�5   
   480Q�6.   5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   .+�5   
   �� $��Login��6   
���  ��$
��Bold"�62   $��20(�6D   $��Center=�6R   $��0 20 0 0q�6o   6�   � 5   
   $��1��6   $��	50 10 0 0q�6   $
��Left=�6/   $	��Top=�6J    � ColumnDefinitions 5      �� 5      $��70 �6#   �� 5      $��10 �6#   �� 5      $	��150 �6#   .+�5      �� $��0��6   
Username62   �� 5       $��1��6   :6+   �� 5!      $��2��6   ��6&   �� *
Username+6B   5"      � 5#   
   $��2��6   $��	50 20 0 0q�6   $
��Left=�6/   $	��Top=�6J    5$      �� 5%      $��70 �6#   �� 5&      $��10 �6#   �� 5'      $	��150 �6#   .+�5)      �� $��0��6   
Password62   �� 5*      $��1��6   :6+   �� 5+      $��2��6   ��6&   �� *
Password+6B   5,      � 5-   
   $��3��6   $��	50 30 0 0q�6   $
��Left=�6/   $	��Top=�6J    5.      �� 5/      $��* �6#   �� 50      $��* �6#   .+�52      �� $��0��6   $��70��6%   $��30��60   $��10 0 0 0q�6<   $
��Left=�6N   $	��Top=�6i     Caliburn.Micro.Message   Attach$&  [Event Click] = [Action Login()]��53      
�������.��6_   Login6f   �� 54      $��1��6   $��70��6%   $��30��60   $��70 0 0 0q�6<   $
��Left=�6N   $	��Top=�6i   $' ![Event Click] = [Action Cancel()]��55      
�������.��6`   Cancel6h   56      �� 57   
   $��4��6   $��
30 20 30 0q�6!   $��50��65   $
��Wrap=�6A   
���  �� �� TextAlignment$ Center=�58      ��6+   �� *	TextError+6H   59      5:      