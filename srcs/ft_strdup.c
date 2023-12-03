#include <stdlib.h>

char	*ft_strdup(const char *src)
{
	int		i;
	char	*dest;

	i = 0;
	dest = NULL;
	while (src[i])
		i++;
	dest = malloc(sizeof(*dest) * i + 1);
	if (dest == NULL)
		return (NULL);
	i = 0;
	while (src[i])
	{
		dest[i] = src[i];
		i++;
	}
	dest[i] = '\0';
	return (dest);
}
