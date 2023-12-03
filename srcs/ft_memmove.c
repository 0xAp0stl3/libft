#include "libft.h"

char	*ft_memmove(void *dest, const void *src, size_t len)
{
	size_t				i;

	if (len == 0 || dest == src)
		return (dest);
	if (dest < src)
	{
		i = 0;
		while (i < len)
		{
			((unsigned char *)dest)[i] = ((const unsigned char *)src)[i];
			i++;
		}
	}
	else
	{
		i = len;
		while (i > 0)
		{
			i--;
			((unsigned char *)dest)[i] = ((const unsigned char *)src)[i];
		}
	}
	return (dest);
}
