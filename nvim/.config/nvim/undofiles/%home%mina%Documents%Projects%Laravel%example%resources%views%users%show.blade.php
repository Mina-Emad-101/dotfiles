Vim�UnDo� ���prp��G j��j��L�����C=�O׺�      3                <p class="ml-5">{{ $user->id }}</p>      *                       fc ^   
 _�                            ����                                                                                                                                                                                                                                                                                                                                                             fc�     �         '      )                <strong>Project:</strong>5��                        �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             fc�     �   "   $          :                <p class="ml-5">{{ $bug->created_at }}</p>�                 >                <p class="ml-5">{{ $bug->reporter->name }}</p>�                t                <p class="ml-5">{{ $bug->assigned_staff ? $bug->assigned_staff->name : 'Bug Not Assigned Yet' }}</p>�                b                <img class="ml-5 w-3/4 lg:w-1/2" src="{{ asset('storage/' . $bug->screenshot) }}">�                U                <p class="ml-5 text-lg lg:text-2xl w-3/4">{{ $bug->description }}</p>�                <                <p class="ml-5">{{ $bug->status->name }}</p>�   
             h                <p class="ml-5">{{ $bug->priority ? $bug->priority->name : 'Bug Not Assigned Yet' }}</p>�                =                <p class="ml-5">{{ $bug->project->name }}</p>�         '      ,    <x-header>Bug #{{ $bug->id }}</x-header>5��                        "                     �       $                 �                     �    
   $                 `                    �    
   6                 r                    �       $                                     �       >                 �                    �       M                 |                    �       $                                     �       <                 %                    �       $                 �                    �    "   $                 f                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             fc�     �                v                <p class="ml-5">{{ $user->assigned_staff ? $user->assigned_staff->name : 'Bug Not Assigned Yet' }}</p>�   
             j                <p class="ml-5">{{ $user->priority ? $user->priority->name : 'Bug Not Assigned Yet' }}</p>�         '      -    <x-header>Bug #{{ $user->id }}</x-header>5��                                             �    
   N                 �                    �       Z                 E                    5�_�                       (    ����                                                                                                                                                                                                                                                                                                                               (          0       v   0    fc�    �         '      >                <p class="ml-5">{{ $user->project->name }}</p>5��       (       	           �       	               5�_�                    
       ����                                                                                                                                                                                                                                                                                                                               (          0       v   0    fc�     �   	      '      *                <strong>Priority:</strong>5��    	                    !                    5�_�                       *    ����                                                                                                                                                                                                                                                                                                                               (          0       v   0    fc�     �   
      '      k                <p class="ml-5">{{ $user->priority ? $user->priority->name : 'User Not Assigned Yet' }}</p>5��    
   *                 X                    5�_�                       -    ����                                                                                                                                                                                                                                                                                                                               (          0       v   0    fc      �   
      '      e                <p class="ml-5">{{ $user->id ? $user->priority->name : 'User Not Assigned Yet' }}</p>5��    
   -                  [                     5�_�      	                 -    ����                                                                                                                                                                                                                                                                                                                               (          0       v   0    fc     �   
      '      c                <p class="ml-5">{{ $user->id $user->priority->name : 'User Not Assigned Yet' }}</p>5��    
   -                  [                     5�_�      
           	      -    ����                                                                                                                                                                                                                                                                                                                               (          0       v   0    fc     �   
      '      M                <p class="ml-5">{{ $user->id : 'User Not Assigned Yet' }}</p>5��    
   -                  [                     5�_�   	              
      -    ����                                                                                                                                                                                                                                                                                                                               (          0       v   0    fc     �   
      '      K                <p class="ml-5">{{ $user->id 'User Not Assigned Yet' }}</p>5��    
   -                  [                     5�_�   
                    -    ����                                                                                                                                                                                                                                                                                                                               (          0       v   0    fc     �   
      '      E                <p class="ml-5">{{ $user->id Not Assigned Yet' }}</p>5��    
   -                  [                     5�_�                       -    ����                                                                                                                                                                                                                                                                                                                               (          0       v   0    fc     �   
      '      A                <p class="ml-5">{{ $user->id Assigned Yet' }}</p>5��    
   -       	           [      	               5�_�                       -    ����                                                                                                                                                                                                                                                                                                                               (          0       v   0    fc    �   
      '      8                <p class="ml-5">{{ $user->id Yet' }}</p>5��    
   -                  [                     5�_�                           ����                                                                                                                                                                                                                                                                                                                               (          0       v   0    fc     �         '      (                <strong>Status:</strong>5��                        �                    �                        �                    5�_�                       *    ����                                                                                                                                                                                                                                                                                                                               (          0       v   0    fc    �         '      =                <p class="ml-5">{{ $user->status->name }}</p>5��       *                 �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       fc&     �                            <div>   -                <strong>Description:</strong>   V                <p class="ml-5 text-lg lg:text-2xl w-3/4">{{ $user->description }}</p>               </div>               <div>   ,                <strong>Screenshot:</strong>   c                <img class="ml-5 w-3/4 lg:w-1/2" src="{{ asset('storage/' . $user->screenshot) }}">               </div>               <div>   0                <strong>Assigned Staff:</strong>   w                <p class="ml-5">{{ $user->assigned_staff ? $user->assigned_staff->name : 'User Not Assigned Yet' }}</p>               </div>               <div>   *                <strong>Reporter:</strong>   ?                <p class="ml-5">{{ $user->reporter->name }}</p>               </div>5��                          �      �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       fc/    �                            <div>   ,                <strong>Created At:</strong>   ;                <p class="ml-5">{{ $user->created_at }}</p>               </div>5��                          �      �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       fcG     �               .    <x-header>User #{{ $user->id }}</x-header>5��                                               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       fcL    �                   <x-header></x-header>5��                                               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       fc L     �                            <div>   &                <strong>Role:</strong>   ;                <p class="ml-5">{{ $user->role->name }}</p>               </div>5��                          q      �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       fc M     �      	       �             5��                          q               �       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       fc R     �             �             5��                          �              ~       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       fc T     �               $                <strong>ID:</strong>5��                        #                    5�_�                        *    ����                                                                                                                                                                                                                                                                                                                                                V       fc ]   
 �               3                <p class="ml-5">{{ $user->id }}</p>5��       *                 ]                    5��