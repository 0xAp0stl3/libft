#include "libft.h"

void	ft_striteri(char *s, void (*f)(unsigned int, char *))
{
	int	j;

	j = 0;
	while (s[j])
	{
		f(j, &s[j]);
		j++;
	}
}
