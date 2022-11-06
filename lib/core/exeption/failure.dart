
abstract class Failure{
  String errorMessage = '';
  int code = 0;
}

class FailureDB extends Failure{
  final int getResultCode;

  FailureDB(this.getResultCode);

  Failure get error{
    switch(getResultCode){
      case 1555:
      case 2067:
      {
        return InsertFailure();
      }
    default:
      return DefaultFailure();
    }
  }
}

@override
class DefaultFailure implements Failure{
  int code = 0;

  String errorMessage = 'Неизвестная ошибка';  
}

@override
class InsertFailure implements Failure{
  int code = 1555;

  String errorMessage = 'Такие данные уже есть';
}

@override
class AuthPasswordFailure implements Failure{
  int code = 1054;

  String errorMessage = 'Неправильный пароль';  
}