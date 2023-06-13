const stringEvaluator = (inputString) => {
  evaluationArray = inputString.split(" ");

  if (evaluationArray.length == 1) {
    let oneTermEvaluation = Number(inputString);
    return [inputString, oneTermEvaluation];
  } else {
    if (evaluationArray[1] == "+") {
      let twoTermEvaluation =
        Number(evaluationArray[0]) + Number(evaluationArray[2]);
      return [inputString, twoTermEvaluation]
    } else if (evaluationArray[1] == "-") {
      let twoTermEvaluation =
        Number(evaluationArray[0]) - Number(evaluationArray[2]);
      return [inputString, twoTermEvaluation];
    }
  }
};

module.exports = stringEvaluator;
