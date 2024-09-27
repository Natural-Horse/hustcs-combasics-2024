#include <stdio.h>
#include <string.h>
#include <ctype.h>

inline int read(){
    int x = 0, f = 1; char ch = getchar();
    while(!isdigit(ch)){if(ch == '-') f = -1; ch = getchar();}
    while(isdigit(ch)){x = (x << 3) + (x << 1) + ch - 48; ch = getchar();}
    return x * f;
}

int absVal(int x) {
    int mask = x >> 31;  
    if((x + mask) ^ mask == ((x < 0)? -x : x)) printf("The answer is correct.\n");
    return (x + mask) ^ mask;
}

int negate(int x) {
    if((~x+1) == (-x)) printf("The answer is correct.\n");
    return ~x + 1;
}
int bitAnd(int x, int y) {
    if((~(~x | ~y)) == x & y) printf("The answer is correct.\n");
    return ~(~x | ~y); 
}
int bitOr(int x, int y) {
    return ~(~x & ~y); 
}
int bitXor(int x, int y) {
    return (x & ~y) | (~x & y);  
}
int isTmax(int x) {
    return !(~x ^ (x + 1)); 
}
int bitCount(int x) {
    int tmp = x, res = 0;
    while(tmp != 0){
        res += (tmp & 1);
        tmp >>= 1;
    }
    return res;
}
int bitMask(int highbit, int lowbit) {
    return ((~0) << (lowbit-1)) & ((unsigned int)~0 >> (32 - highbit));  
}
int addOK(int x, int y) {
    int sum = x + y;
    return (((x ^ sum) & (y ^ sum)) >> 31) & 1;  
}
int byteSwap(int x, int n, int m) {
    int mask = (1 << 8) - 1;
    n = 5 - n - 1, m = 5 - m - 1;
    int s = (x >> (n * 8)) & mask;
    int t = (x >> (m * 8)) & mask;
    x = x - (s << (n * 8)) - (t << (m * 8)) + (s << (m * 8)) + (t << (n * 8));
    return x;
}

int my_strcmp(char * s, char * t){
    char * ss = s, * tt = t;
    if(strlen(s) != strlen(t)) return 0;
    while(*ss != '\0'){
        if(*ss != *tt) return 0;
        ss++, tt++;
    } 
    return 1;
}

char op[10];

int main(){
    int x, y, m;
    scanf("%s", op);
    
    do{ 
        if(my_strcmp(op, "absVal")){
            // printf("%s", op);
            scanf("%d", &x);
            printf("%d, 1 '>>', 1 '^', 1 '+' is used.\n", absVal(x));
        }
        else if(my_strcmp(op, "negate")){
            scanf("%d", &x);
            printf("%d, 1 '~', 1 '+' is used.\n", negate(x));
        }
        else if(my_strcmp(op, "bitAnd")){
            scanf("%d %d", &x, &y);
            printf("%d, 1 '|', 3 '~' are used.\n", bitAnd(x, y));
        }
        else if(my_strcmp(op, "bitOr")){
            scanf("%d %d", &x, &y);
            printf("%d, 1 '&', 3 '~' are used.\n", bitOr(x, y));
        }
        else if(my_strcmp(op, "bitXor")){
            scanf("%d %d", &x, &y);
            printf("%d, 1 '|', 2 '&', 2 '~' are used.\n", bitXor(x, y));
        }
        else if(my_strcmp(op, "isTmax")){
            scanf("%d", &x);
            printf("%d, 1 '!', 1 '+', 1 '^', 1 '~' is used.\n", isTmax(x));
        }
        else if(my_strcmp(op, "bitCount")){
            scanf("%d", &x);
            printf("%d, 1 '+', 1 '&', 1 '>>' is used per loop, for no more than 32 turns.\n", bitCount(x));
        }
        else if(my_strcmp(op, "bitMask")){
            scanf("%d %d", &x, &y);
            printf("%d, 2 '~', 1 '<<', 1 '>>', 1 '&', 2 '-' are used.\n", bitMask(x, y));
        }
        else if(my_strcmp(op, "addOK")){
            scanf("%d %d", &x, &y);
            printf("%d, 1 '+', 2 '^', 2 '&', 1 '>>' is used.\n", addOK(x, y));
        }
        else if(my_strcmp(op, "byteSwap")){
            scanf("%x %d %d", &x, &y, &m);
            printf("%x, 7 '-', 6 '*', 5 '<<', 2 '>>', 2 '&' are used.\n", byteSwap(x, y, m));
        }
        scanf("%s", op);
    }while(!my_strcmp(op, "End"));
    return 0;
}