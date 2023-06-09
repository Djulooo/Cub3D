/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jlaisne <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/17 11:16:46 by jlaisne           #+#    #+#             */
/*   Updated: 2023/05/25 14:38:14 by jlaisne          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "cub.h"

int	main(int argc, char **argv)
{
	if (argc != 2)
	{
		printf("Please provide one (1) *.cub map.\n");
		return (1);
	}
	if (parsing_cub(argv) == 1)
		return (1);
	return (0);
}
