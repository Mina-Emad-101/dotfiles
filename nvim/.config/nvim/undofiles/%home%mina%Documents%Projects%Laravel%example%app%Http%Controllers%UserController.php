Vim�UnDo� ϶���C�h�����0�AiL��þo�B��oqL   V                 +       +   +   +    fc$s    _�                     	        ����                                                                                                                                                                                                                                                                                                                            	           A           v        fc�     �                  �   	            �              9   {       /**   )     * Display a listing of the resource.        */       public function index()       {   
        //       }           /**   1     * Show the form for creating a new resource.        */       public function create()       {   
        //       }           /**   1     * Store a newly created resource in storage.        */   +    public function store(Request $request)       {   
        //       }           /**   &     * Display the specified resource.        */   $    public function show(User $user)       {   
        //       }           /**   8     * Show the form for editing the specified resource.        */   $    public function edit(User $user)       {   
        //       }           /**   0     * Update the specified resource in storage.        */   8    public function update(Request $request, User $user)       {   
        //       }           /**   2     * Remove the specified resource from storage.        */   '    public function destroy(User $user)       {   
        //       }   }5��           8              �       |              �                   E      �               �      5�_�                            ����                                                                                                                                                                                                                                                                                                                            	           N           v        fc�     �   K   M          !        return redirect('/bugs');�   I   K                  $bug->delete();�   G   I          B    public function destroy(Bug $bug): Redirector|RedirectResponse�   A   C          2        return view('bugs.show', ['bug' => $bug]);�   ?   A          (    public function show(Bug $bug): View�   9   ;          .        return redirect('/bugs/'.$newBug->id);�   "   $          C        return view('bugs.create', ['projects' => Project::all()]);�                            'bugs' => $bugs,�                #        return view('bugs.index', [�                -        $bugs = $bugs->paginate(perPage: 12);�                F            $bugs = $bugs->where(['reporter_id' => Auth::user()->id]);�                L            $bugs = $bugs->where(['assigned_staff_id' => Auth::user()->id]);�         N      u        $bugs = Bug::with(['project', 'priority', 'status'])->latest()->orderBy('status_id')->orderBy('priority_id');5��       	                                     �                        �                    �                        �                    �                        1                    �                        :                    �       	                 �                    �                        �                    �                        �                    �                        �                    �                        �                    �    "                    �                    �    9                    �                    �    ?                                        �    A                    :                    �    A   $                 I                    �    A   .                 S                    �    G   !                 �                    �    I   	                 �                    �    K                    #                    5�_�                            ����                                                                                                                                                                                                                                                                                                                            	           N           v        fc�    �   G   I          C    public function destroy(Bug $user): Redirector|RedirectResponse�   ?   A          )    public function show(Bug $user): View�   9   ;          /        return redirect('/users/'.$newBug->id);�   7   9                  $newBug->save();�   6   8          $        $newBug->created_at = now();�   5   7          [        $newBug->screenshot = $request->file('screenshot')->store('screenshots', 'public');�   4   6          9        $newBug->reporter_id = $request->get('reporter');�   3   5          <        $newBug->description = $request->get('description');�   2   4                  $newBug->status_id = 1;�   1   3          7        $newBug->project_id = $request->get('project');�   0   2                  $newBug = new Bug;�         N      v        $users = Bug::with(['project', 'priority', 'status'])->latest()->orderBy('status_id')->orderBy('priority_id');5��                                            �    0                                        �    0                                        �    1                    ,                    �    2                    e                    �    3                    �                    �    4                    �                    �    5                    �                    �    6                    \                    �    7                    �                    �    9   &                 �                    �    ?                                        �    G                    �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                            	           N           v        fc    �         N      =    public function index(): View|Redirector|RedirectResponse5��                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     �                        �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V        fc3    �         M    �         M    �                use Illuminate\Http\Request;5��                          =                      �                          =               �       5�_�                           ����                                                                                                                                                                                                                                                                                                                                       
   #       V        fc<     �         R      w        $users = User::with(['project', 'priority', 'status'])->latest()->orderBy('status_id')->orderBy('priority_id');5��                        �                    5�_�                       #    ����                                                                                                                                                                                                                                                                                                                               #          8       v   8    fc@     �         R      t        $users = User::with(['role', 'priority', 'status'])->latest()->orderBy('status_id')->orderBy('priority_id');5��       #                  �                     5�_�      	                 :    ����                                                                                                                                                                                                                                                                                                                               :          @       v   @    fcM     �         R      ^        $users = User::with(['role'])->latest()->orderBy('status_id')->orderBy('priority_id');5��       :                  �                     5�_�      
           	      /    ����                                                                                                                                                                                                                                                                                                                               /          =       v   =    fcV     �         R      W        $users = User::with(['role'])->latest()->orderBy('id')->orderBy('priority_id');5��       /                  �                     5�_�   	              
      /    ����                                                                                                                                                                                                                                                                                                                               /          =       v   =    fcY    �         R      H        $users = User::with(['role'])->latest()->orderBy('priority_id');5��       /                  �                     5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                          	       V   %    fcw     �                    )        if (Auth::user()->role_id == 2) {   N            $users = $users->where(['assigned_staff_id' => Auth::user()->id]);   /        } elseif (Auth::user()->role_id == 3) {   H            $users = $users->where(['reporter_id' => Auth::user()->id]);   	        }5��                          �      �               5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                          	       V   %    fc~     �         L      0        $users = User::with(['role'])->latest();�         L    5��       /                  �                     5�_�                       D    ����                                                                                                                                                                                                                                                                                                                                          	       V   %    fc�     �         L      F        $users = User::with(['role'])->latest()paginate(perPage: 12);;5��       D                  �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                          	       V   %    fc�    �                    /        $users = $users->paginate(perPage: 12);5��                          �      1               5�_�                       /    ����                                                                                                                                                                                                                                                                                                                                          	       V   %    fc�    �   I               �   	           A   $use Illuminate\Support\Facades\Auth;       'class UserController extends Controller   {       /**   )     * Display a listing of the resource.        */   =    public function index(): View|Redirector|RedirectResponse       {   G        $users = User::with(['role'])->latest()->paginate(perPage: 12);       $        return view('users.index', [               'users' => $users,           ]);       }           /**   1     * Show the form for creating a new resource.        */   "    public function create(): View       {   D        return view('users.create', ['projects' => Project::all()]);       }           /**   1     * Store a newly created resource in storage.        */   H    public function store(Request $request): Redirector|RedirectResponse       {           $request->validate([   &            'project' => ['required'],   5            'description' => ['required', 'max:255'],   2            'screenshot' => ['required', 'image'],           ]);               $newUser = new User;   8        $newUser->project_id = $request->get('project');            $newUser->status_id = 1;   =        $newUser->description = $request->get('description');   :        $newUser->reporter_id = $request->get('reporter');   \        $newUser->screenshot = $request->file('screenshot')->store('screenshots', 'public');   %        $newUser->created_at = now();           $newUser->save();       0        return redirect('/users/'.$newUser->id);       }           /**   &     * Display the specified resource.        */   *    public function show(User $user): View       {   5        return view('users.show', ['user' => $user]);       }           /**   2     * Remove the specified resource from storage.        */   D    public function destroy(User $user): Redirector|RedirectResponse       {           $user->delete();       "        return redirect('/users');       }   }�         J      E        $users = User::with(['role'])->latest()paginate(perPage: 12);5��       /                  �                     �    	       @      @       �       �      �      �    I                      P                     5�_�                       &    ����                                                                                                                                                                                                                                                                                                                            
           
   	       V   %    fc�     �         I      D        return view('users.create', ['projects' => Project::all()]);5��       &                 �                    5�_�                       0    ����                                                                                                                                                                                                                                                                                                                            
           
   	       V   %    fc�   	 �          J      >        return view('users.create', ['roles' => Role::all()]);�         I      use App\Models\User;�         I      A        return view('users.create', ['roles' => Project::all()]);5��       0                 �                    �       0                 �                    �       0                 �                    �                          (                      �       0                 �                    5�_�                    '        ����                                                                                                                                                                                                                                                                                                                            '           6   0       v   0    fc�     �   '   ;   ;    �   &   )   :          }�   '   (   :    �   &   (   J              $request->validate([   &            'project' => ['required'],   5            'description' => ['required', 'max:255'],   2            'screenshot' => ['required', 'image'],           ]);               $newUser = new User;   8        $newUser->project_id = $request->get('project');            $newUser->status_id = 1;   =        $newUser->description = $request->get('description');   :        $newUser->reporter_id = $request->get('reporter');   \        $newUser->screenshot = $request->file('screenshot')->store('screenshots', 'public');   %        $newUser->created_at = now();           $newUser->save();       0        return redirect('/users/'.$newUser->id);       }5��    &                      g      y              �    &                      g              l      5�_�                    '        ����                                                                                                                                                                                                                                                                                                                            (           :           v   0    fc�     �   &   '           5��    &                      g                     5�_�                    *   4    ����                                                                                                                                                                                                                                                                                                                            '           9           v   0    fc�     �   *   ,   N      \            'password' => ['required', 'confirmed', Password::min(8)->letters()->numbers()],�   	      M      "use Illuminate\Routing\Redirector;�   )   +   M      \            'password' => ['required', 'confirmed', Password::min(8)->letters()->numbers()],5��    )   4                 $                    �    )   4                 $                    �    )   4                 $                    �    )   4                 $                    �    )   4                 $                    �    )   4                 $                    �    )   4                 $                    �    	   "              )   �               *       �    *   4                 N                    5�_�                    7        ����                                                                                                                                                                                                                                                                                                                            (           :           v   0    fc!     �   6   7                      Auth::login($user);5��    6                      �                     5�_�                    8       ����                                                                                                                                                                                                                                                                                                                            (           8           v   0    fc#   
 �   7   9   L      !        return redirect('/bugs');5��    7                    �                    5�_�                    6   )    ����                                                                                                                                                                                                                                                                                                                            (           8           v   0    fc/     �   6   8   M      8        Mail::to($user->email)->send(new Accoun($user));�         L      use App\Models\Role;�   5   7   L      @        Mail::to($user->email)->send(new AccountCreated($user));5��    5   )                 �                    �    5   )                 �                    �    5   )                 �                    �                          (                      �    6   )                 �                    5�_�                    7       ����                                                                                                                                                                                                                                                                                                                            )           9           v   0    fc8    �   7   9   N      @        Mail::to($user->email)->send(new AccountCreated($user));�         M      )use Illuminate\Validation\Rules\Password;�   6   8   M      @        Mail::to($user->email)->send(new AccountCreated($user));5��    6                    �                    �    6                    �                    �    6                    �                    �    6                    �                    �    6                    �                    �    6                    �                    �    6                    �                    �                          �               %       �    7                    �                    5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            *           :           v   0    fcI    �   '   )   N      H    public function store(Request $request): Redirector|RedirectResponse5��    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    �    '                    �                    5�_�                    1        ����                                                                                                                                                                                                                                                                                                                            *           :           v   0    fcb    �   0   2   N      ,        $user->name = $request->get('name');5��    0                                          �    0                    �                    5�_�                    6       ����                                                                                                                                                                                                                                                                                                                            *           :           v   0    fcx     �   9   ;   R    �   8   ;                  if(Auth::user()){   	        }�   8   ;   Q              if(Auth)�         P      $use Illuminate\Support\Facades\Mail;�   7   9   P              if(Auth)�   6   9   O              �   6   8   N    5��    6                      �                     �    6                      �                     �    6                      �                     �    6                      �                     �    7                      �                     �    7                    �                    �    7                    �                    �    7                    �                    �    7                    �                    �    7                    �                    �    7                    �                    �                          �               %       �    8                    �                    �    8   !                                     �    8                     �                     �    8                     �                     �    9                      �                     �    9                      �                     �    8                     �                     �    8                     �                     �    8                     �                     �    9                      �                     �    9                      �                     �    9                      �                     �    9                      �                     5�_�                    9       ����                                                                                                                                                                                                                                                                                                                            +           ?           v   0    fc�     �   8   :   S              if(Auth::user()){5��    8                    �                    5�_�                    :        ����                                                                                                                                                                                                                                                                                                                            +           ?           v   0    fc�     �   9   ;   S       5��    9                      �                     �    9                                        �    9                                        �    9                                        �    9                                        �    9                                        �    9                 	                	       5�_�                    :       ����                                                                                                                                                                                                                                                                                                                            +           ?           v   0    fc     �   9   ;   S                  Auth::attempt()5��    9                                        5�_�                     :       ����                                                                                                                                                                                                                                                                                                                            +           ?           v   0    fc    �   8   :   S              if(Auth::guest()){�   9   ;   S                  Auth::login()5��    9                                          �    9                                          �    8   
                 �                    5�_�      !               <        ����                                                                                                                                                                                                                                                                                                                            +           ?           v   0    fc;     �   ;   <              @        Mail::to($user->email)->send(new AccountCreated($user));5��    ;                      )      B               5�_�       "           !   7        ����                                                                                                                                                                                                                                                                                                                            +           =           v   0    fc<     �   7   :   Q    �   7   8   Q    5��    7                      �              B       5�_�   !   #           "   <       ����                                                                                                                                                                                                                                                                                                                            +           ?           v   0    fcC     �   <   >   S    �   <   =   S    5��    <                      a              #       5�_�   "   $           #   =       ����                                                                                                                                                                                                                                                                                                                            +           @           v   0    fcD     �   <   >   T      "        return redirect('/users');5��    <                     a                    5�_�   #   %           $   =       ����                                                                                                                                                                                                                                                                                                                            +           @           v   0    fcL    �   U               �   <              !            return redirect('/');   	        }       "        return redirect('/users');       }           /**   &     * Display the specified resource.        */   *    public function show(User $user): View       {   5        return view('users.show', ['user' => $user]);       }           /**   2     * Remove the specified resource from storage.        */   D    public function destroy(User $user): Redirector|RedirectResponse       {           $user->delete();       "        return redirect('/users');       }   }�   <   >   T      &            return redirect('/users');5��    <                                          �    <                    a      �      �      �    U                      1                     5�_�   $   &           %   .       ����                                                                                                                                                                                                                                                                                                                            +           =           v   0    fc";     �   .   0   U    �   .   /   U    5��    .                      �              >       5�_�   %   '           &   /       ����                                                                                                                                                                                                                                                                                                                            +           >           v   0    fc"<     �   .   0   V      =            'email' => ['required', 'email', 'unique:users'],5��    .                    �                    5�_�   &   (           '   /   '    ����                                                                                                                                                                                                                                                                                                                            +           >           v   0    fc"C     �   .   0   V      ?            'role_id' => ['required', 'email', 'unique:users'],5��    .   '                                     5�_�   '   )           (   /   '    ����                                                                                                                                                                                                                                                                                                                            +           >           v   0    fc"�     �   .   0   V      @            'role_id' => ['required', 'number', 'unique:users'],5��    .   '                                     �    .   .                                     5�_�   (   *           )   /   7    ����                                                                                                                                                                                                                                                                                                                            +           >           v   0    fc"�    �   .   0   V      I            'role_id' => ['required', 'exists:roles,id', 'unique:users'],5��    .   7                                       5�_�   )   +           *   8       ����                                                                                                                                                                                                                                                                                                                            +           >           v   0    fc#T    �   8   ;   W              �   8   :   V    5��    8                                           �    8                                           �    8                                           �    8                                           �    9                                           �    9                    '                    �    9                     -                     5�_�   *               +   9        ����                                                                                                                                                                                                                                                                                                                            +           @           v   0    fc$r    �   8   9                      dd($user);5��    8                                           5��