class Solution {
    public boolean isValid(String s) {
        String[] strArr = s.split("");
        Stack<String> stack = new Stack<>();
        
        for (String str : strArr) {
            if (isOpenCharacter(str)) {
                stack.push(str);
                continue;
            }
            if (stack.isEmpty()) {
                return false;
            }
            if (!isPair(stack.pop(), str)) {
                return false;
            }
        }
        
        return stack.isEmpty();
    }
    
    private boolean isOpenCharacter(String str) {

        return "({[".contains(str);
    }
    
    private boolean isPair(String str1, String str2) {
        String concatStr = str1 + str2;
        
        return concatStr.equals("()") || concatStr.equals("{}") || concatStr.equals("[]");
    }
    
}