# sendemailtask
send email from Laravel API

clone repository

mysql dump is located in the root of this repository in sendemail.sql file

go to file sendemailtask/app/Http/Controllers/FormController.php 

change email address in Mail::to('romanpanshyn@gmail.com') to yours

run command 

php artisan serve

go to website page Laravel Send Email Task

http://127.0.0.1:8000/form

write message in Message Content textarea and click Send button

email will be sent to your email address.

it might need to agree receiving emails from mailgun smtp service.

first emails can go to spam folder, so choose the email and select not a spam option

to run unit and feature tests run command

php artisan test
