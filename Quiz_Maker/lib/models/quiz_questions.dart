
class QuizQuestion{
  const QuizQuestion(this.text,this.answers);
  final String text;
  final List<String> answers;

  List<String> getshuffled(){

   final shuffled= List.of(answers);
        shuffled.shuffle();
        return shuffled;

  }

}