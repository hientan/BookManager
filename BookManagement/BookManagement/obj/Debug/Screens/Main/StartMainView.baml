   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	    BookManagement'   !BookManagement.View.StartMainView   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ^ ZCaliburn.Micro.Platform, Version=3.2.0.0, Culture=neutral, PublicKeyToken=8e5891231f2ed21f(calhttp://www.caliburnproject.org  5   	   3System&clr-namespace:System;assembly=mscorlib  5   	     � WindowStartupLocation$  CenterScreen=�5	   	    � Title$ StartMainView��5
   	    � WindowState$ 	Maximized=�5   	    � 	Resources 5         Width150  Width100 �� 
TargetType �� Property �� Value��%�   &	        &	      'm� 6     X�5   
   150Q�6.   X�5   
   100Q�6.   �� 5   
   " m�6   .�5      ��  � ��$	 150��6&   �� 5       � ��$ 25��6'   �� 5       � ��
 �����6+   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��30 �6   �� 5      $��* �6   .+�5   
   � $��0��6   
�������$	��Top=�63    � ColumnDefinitions 5      �� 5      $	��150 �6#   �� 5      $��* �6#   �� 5       $
��Auto �6#   .+�5"      �� $��0��6   $��1 1 0 1q�6%   
���   �._�5#      �� $��0��6     Caliburn.Micro.Message	   Attach$'	 ![Event Click] = [Action OnMenu()]��6%   $��60��6\   $��30��6g   $
��Left=�6s   $	��Top=�5$      .��61   Menu67   5%      �� 5&      $��1��6   $��1 1 0 1q�6%   
���   �5(      �� 5)      $��2��6   $��1 1 1 1q�6%   
���   �._�5*      �� 
 �� Orientation$
 
Horizontal=�6   .+�5+      �� $��	20 0 20 0q�6:   $��Center=�6M   ��6!   �� *	StrDate+6j   �� 5,      $��	20 0 20 0q�6:   $��Center=�6M   ��6!   �� *	StrRole+6j   �� 5-      $��	20 0 20 0q�6;   $��Center=�6N   ��6!   �� *
FullName+6k   5.      5/      51      � 52   
   $��1��6   $��
0 -125 0 0q�6   $	��Top=�61   .+�54      �� $��1 0 1 1q�6   
���   �55      56      � 58   
   $��2��6   $��
0 -120 0 0q�6   .+�59      �� -   5         ��Name$ 
ActiveItem��5:      5<      �� 5>   
   $	��150��6   $��0 10 0 0q�6!   $
��Left=�63   $	��Top=�6N   .+�5?      o� $	��Top=�6   
�������
���   �$��1q�6m   $��0 20 0 0q�6�   y�6(   �� *IsOpen+.@�5@      m� $
��User��6   .@�5A      m� $
��User��6   $2	 ,[Event Click] = [Action LeftMenu('SrcUser')]��5B      y�5A   -   �� *Role+5B      m� 5C      $��
Infomation��6   $8	 2[Event Click] = [Action LeftMenu('SrcChangePass')]��5D      5E      m� 5G      $��Category��6   $6	 0[Event Click] = [Action LeftMenu('SrcCategoty')]��6-   5H      m� 5J      $��Author��6   $4	 .[Event Click] = [Action LeftMenu('SrcAuthor')]��6+   5K      m� 5M      $
��Book��6   $2	 ,[Event Click] = [Action LeftMenu('SrcBook')]��6)   5N      m� 5P      $��Sign out��6   $(	 "[Event Click] = [Action SignOut()]��6-   5Q      5R      5S      5T      5U      