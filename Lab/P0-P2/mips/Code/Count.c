#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main() {
  int sum[26] = {0};
  char s[1024] = "";
  scanf("%s", s);

  int i;
  for (i = 0; s[i]; i++)
    if (s[i] >= 'a' && s[i] <= 'z') {
      sum[s[i] - 'a']++;
    } else if (s[i] >= 'A' && s[i] <= 'Z')
      sum[s[i] - 'A']++;
  for (i = 0; i < 26; i++)
    if (sum[i])
      printf("'%c'or'%c'\t%d\n", i + 'a', i + 'A', sum[i]);
  return 0;
}
