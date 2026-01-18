🏨 Vistana Hotel Management System
A modern and comprehensive hotel management platform built with Laravel 12, offering full control over reservations, rooms, billing, services, and staff operations.

📸 Screenshots
🌐 Website Screens
<img width="1893" src="https://github.com/user-attachments/assets/2e7fbecf-4651-427a-bd2a-56f1eb194bd2" />

📊 Dashboard Screens
<img width="1919" src="https://github.com/user-attachments/assets/6dbd9e7b-53bc-4d9a-b64c-4ece0b96e561" />
<img width="1901" src="https://github.com/user-attachments/assets/f867a559-836d-4f95-a05e-a9900a2aae97" />

🛎 Management Screens
<img width="1898" src="https://github.com/user-attachments/assets/930e51ae-9add-4bf7-8cac-2cf541e3aff1" />

📑 Reports Screens
(No report screenshots available in the original project)

🗄 ERD
<img width="1060" src="https://github.com/user-attachments/assets/dd710e8e-8962-4034-8d21-6f726c5a73d5" />

📚 Table of Contents
🚀 Project Overview

👥 Team Members

⚙️ Requirements

🛠 Installation & Setup

🗄 Database Structure

📚 API Documentation

✨ Features

🛠 Technologies Used

🔗 Postman Collection

📄 License

🇸🇦 Arabic Version

🚀 Project Overview
The Vistana Hotel Management System is a full-featured hotel operations platform designed to:

Centralize reservations and reduce booking errors

Provide real-time analytics for revenue & occupancy

Manage rooms, room types, services, and invoices

Support multi-role access (Admin, Receptionist, Staff)

Automate billing and customer notifications

Built with Laravel 12, Flowbite, and Tailwind CSS, the system delivers a modern, responsive, and efficient management experience.

👥 Team Members
Role	Name
Leader	Haedara Deeb
Deputy Commander	Mohammad Shaheen
Developer 1	Bedoor Ali Deeb
Developer 2	Zaher Sankari
Developer 3	Ali Mohammad Abbas
Developer 4	Mais Ahmad
⚙️ Requirements
Component	Version
PHP	≥ 8.2
Composer	Latest
Laravel	12.x
Node.js	Latest
MySQL	8.0+
🛠 Installation & Setup
1. Clone the Repository
bash
git clone https://github.com/haedaraedeeb-stack/Hotel-Management.git
cd Hotel-Management
2. Install PHP Dependencies
bash
composer install
3. Install JavaScript Dependencies
bash
npm install
4. Configure Environment
bash
cp .env.example .env
php artisan key:generate
5. Configure Database (.env)
كتابة تعليمات برمجية
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=hotelmanagement
DB_USERNAME=root
DB_PASSWORD=
6. Run Migrations
bash
php artisan migrate
7. Seed the Database
bash
php artisan db:seed
8. Build Frontend Assets
bash
npm run build
9. Start the Server
bash
php artisan serve
🗄 Database Structure
📌 Main Tables
Table	Description
Users	User management
Rooms & Room Types	Room and type management
Reservations	Full reservation system
Services	Hotel services
Invoices	Billing and payments
Ratings	Customer reviews
Images	Room and service images
Notifications	System notifications
📚 API Documentation
🔐 Authentication
Method	Endpoint	Description
POST	/api/login	User login
POST	/api/logout	Logout
POST	/api/register	Register new user
🏨 Room Types
Method	Endpoint	Description
GET	/api/room-types	List room types
POST	/api/room-types	Create room type
PUT	/api/room-types/{id}	Update room type
DELETE	/api/room-types/{id}	Delete room type
🛏 Rooms
Method	Endpoint	Description
GET	/api/rooms	List rooms
POST	/api/rooms	Create room
PUT	/api/rooms/{id}	Update room
DELETE	/api/rooms/{id}	Delete room
⭐ Ratings
Method	Endpoint	Description
GET	/api/ratings	List ratings
POST	/api/ratings	Add rating
📅 Reservations
Method	Endpoint	Description
GET	/api/reservations	List reservations
POST	/api/reservations	Create reservation
PUT	/api/reservations/{id}	Update reservation
DELETE	/api/reservations/{id}	Cancel reservation
🛎 Services
Method	Endpoint	Description
GET	/api/services	List services
POST	/api/services	Create service
🧾 Invoices
Method	Endpoint	Description
GET	/api/invoices	List invoices
POST	/api/invoices	Create invoice
🔗 Postman Collection
Collection Link:  
https://documenter.getpostman.com/view/50368281/2sBXVifovz

✨ Features
🎯 Hotel Management
Full reservation system

Multi-room & room-type management

Automated invoices

Live analytics & reports

Service management

👨‍💼 Admin Dashboard
Built with Flowbite + Tailwind

Real-time notifications

Role-based access

🔐 Security
Laravel Breeze authentication

Sanctum API tokens

Spatie permissions

CSRF protection

📱 Customer Features
Ratings & reviews

Email notifications

🛠 Technologies Used
Backend
Laravel 12

Laravel Breeze

Laravel Sanctum

Laravel Spatie

MySQL 8

Laravel Notifications

Laravel Observers

Laravel Mail

Frontend
Flowbite

Tailwind CSS

Vite

Alpine.js

Chart.js

📄 License
This project is licensed under the MIT License.
