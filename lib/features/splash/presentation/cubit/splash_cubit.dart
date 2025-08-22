import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:travel_app/features/splash/presentation/pages/splash_page.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';


@injectable
class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState.loading());

  void init()async{
   emit (const SplashState.loading());
    await Future.delayed(Duration(seconds: 2));
    emit(SplashState.onborading());

  }
}
