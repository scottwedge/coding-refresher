/**
 * @param {number[]} nums
 * @return {boolean}
 */
var increasingTriplet = function (nums) {
    let a, b;
    a = b = Number.MAX_VALUE;
    for (let num of nums) {
        if (num <= a) {
            a = num;
        }
        else if (num <= b) {
            b = num;
        }
        else {
            return true;
        }
    }
    return false;
};