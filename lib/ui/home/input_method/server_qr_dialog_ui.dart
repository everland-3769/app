import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'server.dart';

class ServerQrDialogUI extends HookConsumerWidget {
  const ServerQrDialogUI({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final serverState = ref.watch(inputMethodServerProvider);

    final urls = serverState.serverAddressText?.split(",") ?? [""];

    final hasMultipleUrls = urls.length > 1;

    final index = useState(0);

    return ContentDialog(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * .4,
      ),
      title: makeTitle(context),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity, height: 12),
          if (hasMultipleUrls) ...[
            Text("我们没能找到合适的 ip 地址来访问服务，请您尝试以下地址（左右切换）"),
          ] else
            Text(
              "请使用您的移动设备扫描以下二维码，或手动访问连接",
              style: TextStyle(color: Colors.white.withOpacity(.8)),
            ),
          SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (hasMultipleUrls)
                IconButton(
                    icon: Icon(FluentIcons.chevron_left),
                    onPressed: () {
                      index.value = (index.value - 1) % urls.length;
                    }),
              SizedBox(width: 24),
              Container(
                color: Colors.white,
                child: QrImageView(
                  data: urls[index.value],
                  size: 200,
                  padding: EdgeInsets.all(12),
                ),
              ),
              SizedBox(width: 24),
              if (hasMultipleUrls)
                IconButton(
                    icon: Icon(FluentIcons.chevron_right),
                    onPressed: () {
                      index.value = (index.value + 1) % urls.length;
                    }),
            ],
          ),
          SizedBox(height: 12),
          Text(
            hasMultipleUrls
                ? "(${index.value + 1} / ${urls.length})"
                : urls[index.value],
            style: TextStyle(fontSize: 13, color: Colors.white.withOpacity(.6)),
          ),
        ],
      ),
    );
  }

  Widget makeTitle(BuildContext context) {
    return Row(
      children: [
        IconButton(
            icon: const Icon(
              FluentIcons.back,
              size: 22,
            ),
            onPressed: () {
              context.pop();
            }),
        const SizedBox(width: 12),
        Text("服务二维码"),
      ],
    );
  }
}
