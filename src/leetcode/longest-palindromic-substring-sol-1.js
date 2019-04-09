/**
 * @param {string} s
 * @return {string}
 */
var longestPalindrome = function(s) {
    function isPal(str) {
        let i,j;
        i = 0;
        j = str.length - 1;
        while(i < j){
            if(str[i] != str[j]){
                return false;
            }
            i++;
            j--;
        }
        return true;
    }
    
    let maxStr = "";
    for(let i = 0; i < s.length; i++){
        for(let j = i; j < s.length; j++){
            let sub = s.substring(i,j+1);
            if(isPal(sub)){
                if(maxStr.length < sub.length){
                    maxStr = sub;
                }
            }
        }
    }
    return maxStr;
};