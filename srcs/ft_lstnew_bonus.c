#include "libft.h"

t_list	*ft_lstnew(void *content)
{
	t_list	*i;

	i = malloc(sizeof(t_list));
	if (i == NULL)
		return (NULL);
	i->content = content;
	i->next = NULL;
	return (i);
}
