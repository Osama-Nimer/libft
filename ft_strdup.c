/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: onimer <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/26 08:24:49 by onimer            #+#    #+#             */
/*   Updated: 2025/02/26 08:43:24 by onimer           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "libft.h"

char	*ft_strcpy(char *dest, const char *src)
{
	int	i;

	i = 0;
	while (src[i] != '\0')
	{
		dest[i] = src[i];
		i++;
	}
	dest[i] = '\0';
	return (dest);
}

char	*ft_strdup(const char *src)
{
	char	*str;

	str = (char *) malloc((ft_strlen(src) + 1) * sizeof(char));
	if (!str)
		return (0);
	ft_strcpy(str, src);
	return (str);
}
/*
#include <stdio.h>

int	main()
{
	char str[] = "Osama Nimer";
	printf("%s" , ft_strdup(str));
}
*/
