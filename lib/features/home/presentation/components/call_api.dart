import 'dart:convert';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Project {
  const Project({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.description,
    required this.logo,
    required this.slug,
    required this.projectIdRevenueCat,
    required this.revenueCatApiKey,
    this.updateAt,
  });

  final int id;
  final String name;
  final String createdAt;
  final String description;
  final String logo;
  final String slug;
  final String projectIdRevenueCat;
  final String revenueCatApiKey;
  final String? updateAt;

  factory Project.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        "id": int id,
        "created_at": String createdAt,
        "name": String name,
        "description": String description,
        "logo": String logo,
        "slug": String slug,
        "project_id_revenuecat": String projectIdRevenueCat,
        "revenuecat_api_key": String revenueCatApiKey,
        "update_at": String? updtateAt,
      } =>
        Project(
          id: id,
          name: name,
          createdAt: createdAt,
          description: description,
          logo: logo,
          slug: slug,
          projectIdRevenueCat: projectIdRevenueCat,
          revenueCatApiKey: revenueCatApiKey,
          updateAt: updtateAt,
        ),
      _ => throw const FormatException('failed to load Project'),
    };
  }
}

Future<List<Project>> fetchProjects() async {
  final response = await http.get(
    Uri.parse('https://dashboard-sell-event.vercel.app/api/projects'),
  );

  if (response.statusCode == 200) {
    final Map<String, dynamic> decoded = jsonDecode(response.body);
    final List data = decoded['data'] as List<dynamic>;
    print("data $data");
    return data.map((item) => Project.fromJson(item)).toList();
  } else {
    throw Exception('Failed to load project');
  }
}

class CallApi extends StatefulWidget {
  const CallApi({super.key});

  @override
  State<CallApi> createState() => _CallApiState();
}

class _CallApiState extends State<CallApi> {
  late Future<List<Project>> futureProject;

  @override
  void initState() {
    super.initState();
    futureProject = fetchProjects();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<List<Project>>(
        future: futureProject,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final projects = snapshot.data!;
            return ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: projects.length,
              itemBuilder: (context, index) {
                final project = projects[index];
                return ListTile(
                  leading: SvgPicture.network(
                    "https://ocknaapqhvgcqgrnjbmx.supabase.co/storage/v1/object/public/projects/boomium.svg",
                    width: 50,
                    height: 50,
                    placeholderBuilder: (context) =>
                        const CircularProgressIndicator(),
                  ),
                  title: Text(project.name),
                  subtitle: Text(project.description),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }

          // By default, show a loading spinner.
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}
