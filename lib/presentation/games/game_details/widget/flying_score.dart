import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gamifier/application/game/flying_score/flying_score_bloc.dart';

class FlyingScore extends HookWidget {
  const FlyingScore({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toogleScore = useState(false);
    final size = MediaQuery.of(context).size;
    return BlocConsumer<FlyingScoreBloc, FlyingScoreState>(
      listener: (context, state) {
        toogleScore.value = true;

        Future.delayed(const Duration(milliseconds: 800), () {
          toogleScore.value = false;
        });
      },
      builder: (context, state) {
        return BlocBuilder<FlyingScoreBloc, FlyingScoreState>(
          builder: (context, state) {
            return IgnorePointer(
              ignoring: true,
              child: Align(
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    alignment: Alignment.topCenter,
                    height: toogleScore.value ? size.height : 0,
                    width: toogleScore.value ? size.width : 0,
                    duration: const Duration(milliseconds: 800),
                    child: Text(
                      '+${state.score}',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          color: Theme.of(context).primaryColor.withOpacity(.3),
                          fontSize: toogleScore.value ? size.width * 0.3 : 0),
                    ),
                  )),
            );
          },
        );
      },
    );
  }
}
