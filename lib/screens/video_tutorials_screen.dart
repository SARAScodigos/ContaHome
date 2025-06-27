import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../data/videos_data.dart';

class VideoTutorialsScreen extends StatelessWidget {
  const VideoTutorialsScreen({super.key});

  static const Color azulOscuro = Color.fromARGB(255, 13, 28, 53);
  static const Color beigeClaro = Color.fromARGB(255, 247, 242, 235);

  String _getYoutubeThumbnail(String url) {
    final uri = Uri.parse(url);
    String? videoId;
    if (uri.host.contains('youtube.com')) {
      videoId = uri.queryParameters['v'];
    } else if (uri.host.contains('youtu.be')) {
      videoId = uri.pathSegments.isNotEmpty ? uri.pathSegments[0] : null;
    }
    return videoId != null ? 'https://img.youtube.com/vi/$videoId/0.jpg' : '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: beigeClaro,
      appBar: AppBar(
        title: const Text('Videos Explicativos'),
        backgroundColor: azulOscuro,
        foregroundColor: beigeClaro,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: VideosData.videos.length,
        itemBuilder: (context, index) {
          final video = VideosData.videos[index];
          return Card(
            color: beigeClaro,
            margin: const EdgeInsets.only(bottom: 12),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                      child: Image.network(
                        _getYoutubeThumbnail(video.url),
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) => Container(
                          height: 200,
                          color: azulOscuro.withOpacity(0.08),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: azulOscuro.withOpacity(0.0),
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.play_circle_outline,
                        size: 80,
                        color: Color.fromARGB(255, 214, 184, 141),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        video.title,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: azulOscuro,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        video.description,
                        style: TextStyle(
                          color: azulOscuro.withOpacity(0.7),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            size: 16,
                            color: azulOscuro.withOpacity(0.7),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            video.duration,
                            style: TextStyle(
                              color: azulOscuro.withOpacity(0.7),
                              fontSize: 12,
                            ),
                          ),
                          const Spacer(),
                          ElevatedButton.icon(
                            onPressed: () => _launchVideo(video.url),
                            icon: const Icon(Icons.play_arrow),
                            label: const Text('Ver Video'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: azulOscuro,
                              foregroundColor: beigeClaro,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _launchVideo(String url) async {
    final uri = Uri.parse('vnd.youtube://${url.split('v=')[1]}');
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    }
  }
}
