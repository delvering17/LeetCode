class Solution {
    public boolean isPalindrome(String s) {
        String filteredStr = s
            .replaceAll("[^a-zA-Z0-9]", "")
            .toLowerCase();
        
        String reversedStr = new StringBuilder(filteredStr)
            .reverse()
            .toString();
        
        return reversedStr.equals(filteredStr); 
    }
}