public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String str = word;
  str = noSpaces(str);
  str = onlyLetters(str);
  str = reverse(str);
  str.toLowerCase();
  println(str);
  word = noSpaces(word);
  word = onlyLetters(word);
  word.toLowerCase();
  println(word);
  return str.equalsIgnoreCase(word);
}
public String reverse(String sWord){
  String result = new String();
  for(int i = sWord.length()-1; i>=0; i--)
    result=result+sWord.charAt(i);
  return result;
}

public String noSpaces(String sWord){
  String str = "";
  for (int i = 0; i < sWord.length() ; i++)
    if(sWord.substring(i,i+1).contains(" "))
      str += "";
    else
      str += sWord.substring(i,i+1);
  return str;
}

public String onlyLetters(String sString){
  String str = "";
  for(int i = 0 ; i < sString.length() ; i++)
    if (Character.isLetter(sString.charAt(i))== true)
      str += sString.charAt(i);
  return str;
}
