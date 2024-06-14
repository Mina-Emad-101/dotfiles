Vim�UnDo� ��(�Ɂ%�_ z���XҢ��7�:�����   1                      '                           fc!K    _�                            ����                                                                                                                                                                                                                                                                                                                                                             fc     �         :      #    <x-header>Report Bug</x-header>5��              
                 
              5�_�                       &    ����                                                                                                                                                                                                                                                                                                                                                             fc    �         :      X        <x-form class="mx-2" action="/bugs" enctype="multipart/form-data" method="POST">5��       &                 f                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             fc:     �                X                        <option value="{{ $project->id }}">{{ $project->name }}</option>�   
             4                    @foreach ($projects as $project)�                3                <select id="project" name="project"�         :      +            <x-form-element name="project">5��       "                 �                     �                        �                     �       (                 �                     �    
                    $                    �    
   )                 .                    �       +                 _                    �       <                 p                    5�_�                    
   J    ����                                                                                                                                                                                                                                                                                                                                                             fc_    �   	      :      ]                    <option value="" selected disabled hidden>-- Select a Project --</option>5��    	   J                 �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       fcz    �                /            <x-form-element name="description">   F                <textarea id="description" name="description" rows="4"   �                    class="w-full lg:w-3/4 p-1.5 rounded-md shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600"                       required>                   </textarea>               </x-form-element>    5��                          �      �              5�_�                            ����                                                                                                                                                                                                                                                                                                                                      +           V       fc�    �      $       �             �                .            <x-form-element name="screenshot">                   <div   ~                    class="w-full lg:w-3/4 flex justify-center rounded-lg border border-dashed border-gray-900/25 px-6 py-10">   -                    <div class="text-center">   l                        <svg class="mx-auto h-12 w-12 text-gray-300" viewBox="0 0 24 24" fill="currentColor"   /                            aria-hidden="true">   5                            <path fill-rule="evenodd"  {                                d="M1.5 6a2.25 2.25 0 012.25-2.25h16.5A2.25 2.25 0 0122.5 6v12a2.25 2.25 0 01-2.25 2.25H3.75A2.25 2.25 0 011.5 18V6zM3 16.06V18c0 .414.336.75.75.75h16.5A.75.75 0 0021 18v-1.94l-2.69-2.689a1.5 1.5 0 00-2.12 0l-.88.879.97.97a.75.75 0 11-1.06 1.06l-5.16-5.159a1.5 1.5 0 00-2.12 0L3 16.061zm10.125-7.81a1.125 1.125 0 112.25 0 1.125 1.125 0 01-2.25 0z"   6                                clip-rule="evenodd" />                           </svg>   E                        <div class="mt-4 flex text-sm text-gray-600">   3                            <label for="screenshot"   �                                class="relative cursor-pointer rounded-md bg-white font-semibold text-indigo-600 focus-within:outline-none focus-within:ring-2 focus-within:ring-indigo-600 focus-within:ring-offset-2 hover:text-indigo-500">   :                                <span>Upload a file</span>   u                                <input id="screenshot" name="screenshot" type="file" class="sr-only" accept="image/*"   -                                    required>   $                            </label>   @                            <p class="pl-1">or drag and drop</p>                           </div>   M                        <p class="text-xs text-gray-600">Image Files Only</p>                       </div>                   </div>               </x-form-element>           P            <input type="hidden" name="reporter" value="{{ Auth::user()->id }}">    5��                          �      U              �                          �              R      5�_�      	                 _    ����                                                                                                                                                                                                                                                                                                                                       #           V       fc    �         +      q                <input class="p-1.5 rounded-lg" type="text" id="name" name="name" placeholder="Employee Username"                       required>�         +      k                <input class="p-1.5 rounded-lg" type="text" id="name" name="name" placeholder="My Username"5��       _                 e                    �       Q            3   W      4       4       5�_�      
           	   %       ����                                                                                                                                                                                                                                                                                                                                       #           V       fcH    �   $   &   +      V                <a href="/bugs" class="text-sm font-semibold text-gray-900">Cancel</a>5��    $                    �                    5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                 V       fcf     �                (            <x-form-element name="role">   -                <select id="role" name="role"   �                    class="rounded-md p-1.5 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-indigo-600 lg:max-w-xs"                       required>   Z                    <option value="" selected disabled hidden>-- Select a Role --</option>   .                    @foreach ($roles as $role)   R                        <option value="{{ $role->id }}">{{ $role->name }}</option>                       @endforeach                   </select>               </x-form-element>    5��                          �       B              5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                 V       fck    �      	   +      Q                <input class="p-1.5 rounded-lg" type="text" id="name" name="name"   =                    placeholder="Employee Username" required>�      $        �              5��                          �              B      �       Q      3               4       4       5�_�                       ,    ����                                                                                                                                                                                                                                                                                                                               /          2       v   2    fc�    �         +      -                <select id="role" name="role"5��       ,                  H                     5�_�                            ����                                                                                                                                                                                                                                                                                                                               '       "          V   .    fc �     �         "      (            <x-form-element name="role">�             	   0                <select id="role" name="role_id"   �                    class="rounded-md p-1.5 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-indigo-600 lg:max-w-xs"                       required>   Z                    <option value="" selected disabled hidden>-- Select a Role --</option>   .                    @foreach ($roles as $role)   R                        <option value="{{ $role->id }}">{{ $role->name }}</option>                       @endforeach                   </select>               </x-form-element>5��           	                                   �                        �                    �                        �                    �                                             �                                             5�_�                       *    ����                                                                                                                                                                                                                                                                                                                               '                 V   .    fc �     �         #                  �         "    5��                                                �                         ,                     5�_�                           ����                                                                                                                                                                                                                                                                                                                               '                 V   .    fc �    �      $   -   
   (            <x-form-element name="role">   0                <select id="role" name="role_id"   �                    class="rounded-md p-1.5 shadow-sm ring-1 ring-inset ring-gray-300 focus:ring-2 focus:ring-inset focus:ring-indigo-600 lg:max-w-xs"                       required>   Z                    <option value="" selected disabled hidden>-- Select a Role --</option>   .                    @foreach ($roles as $role)   R                        <option value="{{ $role->id }}">{{ $role->name }}</option>                       @endforeach                   </select>               </x-form-element>�      $   #    �         #    5��                   
                      D      �          	       	      ,            B      5�_�                           ����                                                                                                                                                                                                                                                                                                                                         *       v   *    fc!     �         -      ,            @if (Auth::user()->role_id == 1)5��                                             5�_�                    $       ����                                                                                                                                                                                                                                                                                                                                         *       v   *    fc!    �   #   %   -                  @endif5��    #                    �                    5�_�                     $       ����                                                                                                                                                                                                                                                                                                                                         *       v   *    fc!J    �   &   (   1                      �   &   )   0                      �   %   (   /                  @guest�   $   '   .                  �   $   &   -    5��    $                      �                     �    $                      �                     �    $                     �                     �    %                     �                     �    %                    �                    �    %                    �                    �    %                    �                    �    %                    �                    �    %                     �                     �    %                    �                     �    &                      �                      �    &                    �                     �    &                  .   �              .       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             fc     �         :      ,                <select id="" name="project"5��                         �                      5��