package entidades; 

import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.HashSet;
import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.Query;

import orm.util.HibernateUtil;

public class Passagem 
{
	private int id;
	private String destino;
	private String origem;
	private Date data;
	private double preco;
	
	// Construtor Basico //
	public Passagem(int id, String destino, String origem, int ano, int mes,int dia, double preco)
	{
		this.id = id;
		this.destino = destino;
		this.origem = origem;
		this.data = new Date(ano,mes,dia);
		this.preco = preco;
	}

	// GETTERS //
	public int getId() {
		return id;
	}

	public String getDestino() {
		return destino;
	}

	public String getOrigem() {
		return origem;
	}

	public Date getData() {
		return data;
	}

	public double getPreco() {
		return preco;
	}

	public void salvar()
	{
	    Session s = HibernateUtil.getSessionFactory().getCurrentSession();
	    s.beginTransaction();
	    s.save(this);
	    s.getTransaction().commit();
	}

	
}
