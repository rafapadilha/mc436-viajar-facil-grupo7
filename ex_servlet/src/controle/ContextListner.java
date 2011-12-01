package br.unicamp.ic.control;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ContextListner implements ServletContextListener
{
	@Override
	public void contextDestroyed(ServletContextEvent context)
	{
		// método executado quando aplicação termina
	}

	@Override
	public void contextInitialized(ServletContextEvent context)
	{
		// método executado quando aplicação inicializa
	}

}
