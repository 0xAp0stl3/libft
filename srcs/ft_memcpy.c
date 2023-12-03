#include "libft.h"

void	*ft_memcpy(void *dest, const void *src, size_t n)
{
	size_t				i;
	const unsigned char	*s;
	unsigned char		*d;

	d = (unsigned char *)dest;
	s = (const unsigned char *)src;
	i = 0;
	if (n == 0 || dest == src)
		return (dest);
	while (n != i)
	{
		d[i] = s[i];
		i++;
	}
	return (dest);
}
