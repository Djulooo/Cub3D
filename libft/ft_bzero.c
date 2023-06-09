/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_bzero.c                                         :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gclement <gclement@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/07 16:22:44 by gclement          #+#    #+#             */
/*   Updated: 2022/11/13 14:47:02 by gclement         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_bzero(void *pointer, size_t n)
{
	size_t	i;

	i = 0;
	while (i < n)
	{
		((char *)pointer)[i] = '\0';
		i++;
	}
}
