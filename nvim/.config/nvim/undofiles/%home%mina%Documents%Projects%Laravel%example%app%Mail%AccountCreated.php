Vim�UnDo� >��(4�>i�^4D��"xHeT>�n>}�   8               ]   +                          fa�    _�                            ����                                                                                                                                                                                                                                                                                                                                                             fa$$    �   5               �              1   +use Illuminate\Contracts\Queue\ShouldQueue;   use Illuminate\Mail\Mailable;   &use Illuminate\Mail\Mailables\Content;   'use Illuminate\Mail\Mailables\Envelope;   &use Illuminate\Queue\SerializesModels;       %class AccountCreated extends Mailable   {   $    use Queueable, SerializesModels;           /**   %     * Create a new message instance.        */   !    public function __construct()       {   
        //       }           /**         * Get the message envelope.        */   (    public function envelope(): Envelope       {           return new Envelope(   '            subject: 'Account Created',   (            from: 'menamanos@gmail.com',   
        );       }           /**   *     * Get the message content definition.        */   &    public function content(): Content       {           return new Content(               view: 'view.name',   
        );       }           /**   +     * Get the attachments for the message.        *   @     * @return array<int, \Illuminate\Mail\Mailables\Attachment>        */   (    public function attachments(): array       {           return [];       }   }�          6                  �          5    5��                          ^                     �                       (   ^              (       �          0      0       I       �      �      �    5                      �                     5�_�                    (       ����                                                                                                                                                                                                                                                                                                                            (          (          v       fa$O    �   '   )   5                  view: 'view.name',5��    '          	                	              �    '                                        5�_�                           ����                                                                                                                                                                                                                                                                                                                            (          (          v       fa-|    �                (            from: 'menamanos@gmail.com',5��                          2      )               5�_�                    '       ����                                                                                                                                                                                                                                                                                                                            '          '          v       faH�    �   &   (   4      "            view: 'email.content',5��    &                    �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             fa��     �         4      
        //5��               
          {      
              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             fa�     �         4      !    public function __construct()5��                       
   s              
       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             fa�%     �         4              private 5��                         �                     5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             fa�0     �         4              private $user = $user;5��                         �                     5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                             fa�7     �         5      +    public function __construct(User $user)�         4      use Illuminate\Bus\Queueable;�         4      +    public function __construct(User $user)5��                         s                    �                         s                    �                         s                    �                                                �                         �                    5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             fa�<    �         5      #        private User $user = $user;5��                         �                     5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             fa�g    �         5              private $user = $user;5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             fa�n     �         5      #        private User $user = $user;5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             fa�q     �         5              User $user = $user;5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             fa�t     �         5              $user = $user;5��                         �                     �       
                 �                    5�_�                          ����                                                                                                                                                                                                                                                                                                                                                             fa��     �                         protected $user = $user;5��                          �      !               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             fa��   
 �         4    5��                          �                     �                          �                     �                         �                     �                          �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             fa��    �         5      +    public function __construct(User $user)5��                          �                     5�_�                    (       ����                                                                                                                                                                                                                                                                                                                                                             fa��     �   )   +   8                      �   )   +   7    �   (   +                      with: [               ]�   (   +   6                  �   (   *   5    5��    (                                           �    (                                           �    (                                        �    (                                        �    (                                        �    (                     #                     �    )                      $                     �    )                      $                     �    )                      $                     �    )                    5                    �    )                     :                     �    )   !                 E                    �    )   !                 E                    �    )   !                 E                    �    )   %                 I                    5�_�                    *   %    ����                                                                                                                                                                                                                                                                                                                                                             fa��    �   )   +   8      &                'user' => $this->user;5��    )   %                 I                    5�_�                     +       ����                                                                                                                                                                                                                                                                                                                                                             fa�    �   *   ,   8                  ]5��    *                     X                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             fa��     �         5               protected $user = $user,5��                        �                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             fa��     �         5              private $user = $user,5��              	          �      	              �                        �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             fa��     �         5          }{}5��                         �                     5��