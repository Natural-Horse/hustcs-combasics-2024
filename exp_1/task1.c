#include <stdio.h>
#include <string.h>

#define N 5
#define N1 2
#define N2 3

struct student {
    char name[8];
    short age;
    float score;
    char remark[200];
};

void get_Id(char *s){
    char c;
    char * pt = s;
    c = getchar();
    while(c == ' ') c = getchar();
    do{
        *pt = c; pt++;
        c = getchar();
    }while(c != ' ' && c != '\n');
}

void unzip_Id(char *z, char *s){
    char * pt1 = z, * pt2 = s;
    while(*pt1 != ' '){
        *(pt2++) = *(pt1++);
    }
}

void input_students(struct student old_s[], int n) {
    for (int i = 0; i < n; i++) {
        get_Id(old_s[i].name);
        scanf("%hd", &old_s[i].age);
        scanf("%f", &old_s[i].score);
        get_Id(old_s[i].remark);
    }
}

int pack_student_bytebybyte(struct student* s, int sno, char *buf) {
    int len = 0;
    for (int i = 0; i < sno; i++) {
        for (int j = 0; j < strlen(s[i].name); j++) buf[len++] = s[i].name[j];
        buf[len++] = ' ';
        buf[len++] = s[i].age & 0xFF;
        buf[len++] = (s[i].age >> 8) & 0xFF;
        for (int j = 0; j < sizeof(s[i].score); j++) buf[len++] = ((char*)&s[i].score)[j];
        for (int j = 0; j < strlen(s[i].remark); j++) buf[len++] = s[i].remark[j];
        buf[len++] = ' ';
    }
    return len;
}

int pack_student_whole(struct student* s, int sno, char *buf) {
    int len = 0;
    for (int i = 0; i < sno; i++) {
        strcpy(buf + len, s[i].name);
        len += sizeof(s[i].name);
        *(short*)(buf + len) = s[i].age;
        len += sizeof(short);
        *(float*)(buf + len) = s[i].score;
        len += sizeof(float);
        strcpy(buf + len, s[i].remark);
        len += sizeof(s[i].remark);
    }
    return len;
}

int restore_student(char *buf, int len, struct student* s) {
    int offset = 0;
    int count = 0;
    while (offset < len) {
        if(count < N1){
            unzip_Id(buf + offset, s[count].name);
            offset += strlen(s[count].name) + 1;
            s[count].age = *(short*)(buf + offset);
            offset += sizeof(short);
            s[count].score = *(float*)(buf + offset);
            offset += sizeof(float);
            unzip_Id(buf + offset, s[count].remark);
            offset += strlen(s[count].remark) + 1;
            count++;
        }
        else{
            strcpy(s[count].name, buf + offset);
            offset += sizeof(s[count].name);
            memcpy(&s[count].age, buf + offset, sizeof(s[count].age));
            offset += sizeof(s[count].age);
            memcpy(&s[count].score, buf + offset, sizeof(s[count].score));
            offset += sizeof(s[count].score);
            strcpy(s[count].remark, buf + offset);
            offset += sizeof(s[count].remark);
            count++;
        }
    }
    return count;
}

void print_float(float num){
    char * pt = (char *)&num;
    printf("\n");
    for(int i = 3; i >= 0; --i){
        printf("%02x", pt[i]);
    }
}

int main() {
    struct student old_s[N], new_s[N];
    char message[1000005];
    
    input_students(old_s, N);//输入学生数据
    for (int i = 0; i < N; i++) {          //打印压缩前数据
        printf("Student %d: %s, Age: %d, Score: %.2f, Remark: %s\n",      
            i, old_s[i].name, old_s[i].age, old_s[i].score, old_s[i].remark);
    }

    printf("The first student's score: ");
    print_float(old_s[0].score);
    printf("\n");
    
    int len1 = pack_student_bytebybyte(old_s, N1, message);//逐字节压缩前N1个学生
    
    int len2 = pack_student_whole(old_s + N1, N2, message + len1);//整体压缩后N2个学生
    
    int total_len = len1 + len2;
    printf("Total compressed length: %d\n", total_len);
    
    int Count = restore_student(message, total_len, new_s);//解压数据
    
    printf("Count : %d\n", Count);     //打印解压后人数
    for (int i = 0; i < N; i++) {          //打印解压结果
        printf("Student %d: %s, Age: %d, Score: %.2f, Remark: %s\n",
            i, new_s[i].name, new_s[i].age, new_s[i].score, new_s[i].remark);
    }
    
    printf("First 20 bytes of compressed data:\n");    //打印前20个字节的内容
    for (int i = 0; i < 20; i++) {
        printf("%02x ", (unsigned char)message[i]);
    }
    printf("\n");

    return 0;
}
