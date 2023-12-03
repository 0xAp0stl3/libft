#include "libft.h"

int	ft_strncmp(const char *s1, const char *s2, size_t n)
{
	size_t	i;

	i = 0;
	while (s1[i] != '\0' && s1[i] == s2[i] && n > 0)
	{
		i++;
		n--;
	}
	if (n == 0)
	{
		return (0);
	}
	if (s1[i] < 0)
		return (1);
	if (s2[i] < 0)
		return (-1);
	return (s1[i] - s2[i]);
}
