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
  String str = new String();
  for(int i = word.length()-1; i >=0; i--)
  {
  str = str + word.charAt(i);
  if(findLetters(noSpaces(str.toLowerCase())).equals(findLetters(noSpaces(word.toLowerCase()))))
    return true;
  }
  return false;
}

public String noSpaces(String word)
{
  String ans = new String("");
  for(int i =0; i < word.length(); i++)
    if(word.charAt(i) !=(' '))
       ans = ans + word.charAt(i) ; 
   return ans;
}
public String findLetters(String word)
{
   String c = new String();
  for(int i =0; i < word.length(); i++)
  if(Character.isLetter(word.charAt(i)) ==true)
     c+= word.charAt(i);
   return c;
 }
