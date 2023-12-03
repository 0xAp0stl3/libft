#include "libft.h"

void	*ft_memchr(const void *str, int c, size_t n)
{
	size_t				i;
	const unsigned char	*s;
	unsigned char		ca;

	s = (const unsigned char *)str;
	ca = (unsigned char)c;
	i = 0;
	while (n != i)
	{
		if (s[i] == ca)
			return ((void *)&s[i]);
		i++;
	}
	return (NULL);
}
