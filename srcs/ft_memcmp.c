#include "libft.h"

int	ft_memcmp(const void *s1, const void *s2, size_t n)
{
	size_t			i;
	const char		*src1;
	const char		*src2;

	src1 = s1;
	src2 = s2;
	i = 0;
	if (n == 0)
		return (0);
	while (src1[i] == src2[i] && i < n - 1)
		i++;
	return ((const unsigned char)src1[i] - (const unsigned char)src2[i]);
}
