## Version 2.0
## language: en

 Code: #O
    {code} #Code of the challenge if it exists
  Site: #M
    https://app.hackthebox.com/starting-point?tier=2
  Category: #O
    very easy 
  User: #M
    UltraMagnu
  Goal: #M
    HTB{af13b0bee69f8a877c3faf667f7beacf}

  Background:

    Hacker's software:
    | <Software name> | <Version>   |
    | {kali linux}    |   {22.3}    |
    | {Firefox. esr}  |  {91.11}    |
   

  Machine information:
    Given I am accessing the {oopsie} through a VPN 
    And SSH with {oopsie@10.129.48.192}
    And use command {curl -X OPTIONS -I http://10.129.48.192/uploads/HTTP/1.1 200 OK}
   
  Scenario: {Success}:{nikto -host 10.129.64.185 }

    Given I print {/cdn-cgi/login/: CGI Directory found}
    Then I can see {cp  /usr/share/webshells/php/php-reverse-shell.php ./}
    Then I try to decrypt {nano php-reverse-shell.php} 
    Then I can actually read the flag from {HTB{f2c74ee8db7983851ab2a96a44eb7981}}
    And I conclude that {HTB{af13b0bee69f8a877c3faf667f7beacf}} worked
    And solved the challenge
