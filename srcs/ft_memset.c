#include "libft.h"

void	*ft_memset(void *str, int c, size_t n)
{
	char	*str_d;
	size_t	i;

	i = 0;
	str_d = (char *)str;
	while (i < n)
	{
		str_d[i] = c;
		i++;
	}
	return (str);
}
