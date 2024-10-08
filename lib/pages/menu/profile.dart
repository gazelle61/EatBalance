// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors

import 'package:eat_balance/widget/mytext.dart';
import 'package:eat_balance/widget/profile/item.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFBE6),
          elevation: 0,
          title: Mytext(
              text: 'My Profile',
              fontSize: 24,
              color: Color(0xFF1A4D2E),
              fontWeight: FontWeight.w600),
          centerTitle: true,
        ),
        backgroundColor: Color(0xFFFFFBE6),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 60,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 18,
                        child: Icon(
                          Icons.edit,
                          color: Colors.grey[700],
                          size: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Mytext(
                  text: 'Seo Rin',
                  fontSize: 24,
                  color: Color(0xFF1A4D2E),
                  fontWeight: FontWeight.w600),
              const SizedBox(height: 5),
              Mytext(
                text: 'seo.rin@gmail.com',
                fontSize: 16,
                color: Color(0xFF4F6F52),
                fontWeight: FontWeight.normal,
              ),
              const SizedBox(height: 30),
              const Divider(),
              const SizedBox(height: 10),
              Item(
                icon: Icons.person,
                text: 'Edit Profil',
                onTap: () {
                  // logika untuk mengedit profil
                },
              ),
              Item(
                icon: Icons.lock,
                text: 'Ganti Password',
                onTap: () {
                  // logika untuk mengganti password
                },
              ),
              Item(
                icon: Icons.settings,
                text: 'Pengaturan',
                onTap: () {
                  // logika untuk membuka pengaturan
                },
              ),
              Item(
                icon: Icons.tune,
                text: 'Preferensi',
                onTap: () {
                  // logika untuk membuka preferensi pengguna
                },
              ),
              Item(
                icon: Icons.logout,
                text: 'Logout',
                onTap: () {
                  // logika untuk logout
                },
              ),
            ],
          ),
        ));
  }
}
