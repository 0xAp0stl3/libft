#include "libft.h"

char	*ft_strrchr(const char *s, int c)
{
	int		i;
	char	*l;

	i = 0;
	l = NULL;
	while (s[i])
	{
		if (s[i] == (unsigned char)c)
			l = (char *)(s + i);
		i++;
	}
	if (s[i] == (unsigned char)c)
		return ((char *)s + i);
	return (l);
}
