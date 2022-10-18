#include <iostream>

extern "C" int sum(int a, int b);

int main()
{
  std::cout << sum(50, 50) << std::endl;

  return 0;
}
