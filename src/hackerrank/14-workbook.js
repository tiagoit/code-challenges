// https://www.hackerrank.com/contests/microverse-coding-challenges/challenges/lisa-workbook
// 14 - Lisa's Workbook - 20191002

function workbook(n, k, arr) {
    let page = 0;
    let specialAcc = 0;
    arr.forEach(problemsOnChapter => {
        let pagesOnChapter = Math.ceil(problemsOnChapter / k);
        for(let i=1; i<=pagesOnChapter; i++) {
            page++;
            let firstProblemOfPage = (i-1)*k + 1;
            let lastProblemOfPage = i*k;
            if(page >= firstProblemOfPage && page <= lastProblemOfPage && page <= problemsOnChapter) specialAcc++;
        }
    });
    return specialAcc;
}

console.log(workbook(5, 3, [4,2,6,1,10])); // 4
console.log(workbook(10, 5, [3,8,15,11,14,1,9,2,24,31])); // 8
