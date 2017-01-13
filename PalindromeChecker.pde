public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String reversed = reverse(word);
  noSpaces(reversed);
  noCapitals(reversed);
  textOnly(reversed);
  if(word.equals(reversed))
    return true;
  else
    return false;
}

public String reverse(String sWord)
{
  String theReverse = new String();
  for(int i = sWord.length() - 1; i >= 0; i--)
    theReverse = theReverse + sWord.substring(i, i + 1);
  println(theReverse);
  return theReverse;
  
}

public String noSpaces(String sWord){
   String noMoreSpaces = new String();
   for(int i = 0; i < sWord.length(); i++)
   {
     if(sWord.charAt(i) != ' ')
      noMoreSpaces = noMoreSpaces + sWord.substring(i, i + 1);
   }
   println(noMoreSpaces);
   return noMoreSpaces;
   
}

public String noCapitals(String sWord){
  String lowerCase = new String();
  for(int i = 0; i < sWord.length(); i++)
  {
    lowerCase = lowerCase + sWord.substring(i, i + 1).toLowerCase();
  }
  println(lowerCase);
  return lowerCase;
  
}

public String textOnly(String sWord) {
  String text = new String();
  for(int i = 0; i < sWord.length(); i++)
  {
    if(Character.isLetter(sWord.charAt(i)) == true)
    text = text + sWord.substring(i, i + 1);
  }
  println(text);
  return text;
  
}