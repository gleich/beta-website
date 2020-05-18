// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// 🌎 Project imports:
import 'package:personal_site/routes/skills/widgets/skill.dart';
import 'package:personal_site/widgets/pageTemplate.dart';
import 'package:personal_site/widgets/text.dart';

class SkillsRoute extends StatelessWidget {
  static const routeName = '/skills';

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      pageName: '🚀 Skills',
      body: SingleChildScrollView(
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                PageTitleDesktop(
                  '🚀',
                  'Coding Skills',
                ),
                Text(
                  "I've been coding for:",
                  style: TextStyle(fontSize: 50),
                ),
                Text(
                  '${(DateTime.now().difference(DateTime(2018, 11, 7, 21, 30, 0)).inDays / 31) / 12} years',
                  style: TextStyle(fontSize: 50),
                ),
                const SizedBox(
                  height: 50,
                ),
                Skill(
                  icon: MdiIcons.languagePython,
                  name: '🐍 Python',
                  uses: <String>[
                    '📷  Computer Vision',
                    '🎒  Backend Applications',
                    '🧠  Machine Learning (Beginner)'
                  ],
                ),
                Skill(
                  icon: Image.network(
                    'https://fluttericon.com/logo_dart_192px.svg',
                    width: 300,
                    scale: 0.1,
                  ),
                  name: '🎯 Dart',
                  uses: <String>[
                    '🐦  Flutter based Applications',
                    '📠  Command Line Programs',
                    '📦  Community Packages'
                  ],
                ),
                Skill(
                  icon: MdiIcons.languageGo,
                  name: '🏎 Golang',
                  uses: <String>[
                    '📠  Command Line Programs',
                    '🏎  Fast Applications',
                    '🕸  APIs  (Beginner)'
                  ],
                ),
                Skill(
                  icon: MdiIcons.languageHtml5,
                  name: '🕸 HTML, CSS',
                  uses: <String>[
                    '🌎  Web Applications',
                  ],
                ),
                Skill(
                  icon: FlutterLogo(
                    size: 300,
                  ),
                  name: '🐦 Flutter',
                  uses: <String>[
                    '📱  IOS Applications',
                    '📱  Android Applications',
                    '🍏  MacOS Applications',
                    '🐧  Linux Applications',
                    '🖼️  Windows Applications',
                    '🌎  Web Applications',
                    '📦  Community Packages'
                  ],
                ),
                Skill(
                  icon: MdiIcons.cameraControl,
                  name: '📷  OpenCV',
                  uses: <String>[
                    '📷  Computer vision applications',
                  ],
                ),
                Skill(
                  icon: MdiIcons.githubCircle,
                  name: '🐙 GitHub',
                  uses: <String>[
                    '📊  Over 6,000 Contributions in the \n       Last Year',
                    '📊  Contributions to over 20 Organizations',
                    '📊  Over 100 self Started Projects \n       in the Last Year'
                  ],
                ),
                Skill(
                  icon: MdiIcons.firebase,
                  name: '🔥 Firebase',
                  uses: <String>[
                    '⏰  Real time chat/data transformation',
                  ],
                ),
                Skill(
                  icon: MdiIcons.rocket,
                  name: '🤖 CI/CD',
                  uses: <String>[
                    '🎩  Jenkins on ARM',
                    '👷‍♂️  Travis CI',
                    '🐙  GitHub Actions'
                  ],
                ),
                Skill(
                  icon: MdiIcons.docker,
                  name: '🐳 Docker',
                  uses: <String>[
                    '📦  Containerized Applications',
                    '🐳  Docker in Docker',
                    '🥧  Scalable Software Deployments',
                    '💪  ARM Based Image Builds (Multi-Arch)',
                  ],
                ),
                Skill(
                  icon: MdiIcons.kubernetes,
                  name: '☸️ k8s',
                  uses: <String>[
                    '⚖️  Software at Scale',
                    '🥧  k3s on rpis',
                    '🦾  Bare Metal Clusters'
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
