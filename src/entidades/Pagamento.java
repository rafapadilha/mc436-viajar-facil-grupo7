package entidades;

import java.util.List;
import java.util.Set;
import java.util.HashSet;
import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.Query;

import orm.util.HibernateUtil;

public class Pagamento 
{
	private int id;	
	private Pacote pacote;
	private double preco;
	private boolean estado; 
	private int codigoPagamento;
	
	///// Construtor basico 
	public Pagamento()
	{
	}

	public Pagamento (Pacote pacote,double preco,int codigoPagamento)
	{
		this.pacote = pacote;
		this.preco = preco;
		this.codigoPagamento = codigoPagamento;
		this.estado = false;   //seta estado para falso, jah que o pagamento nao estah quitado
	}
	
	public boolean obterStatus()
	{
		return estado;
	}
	
	public boolean quitar()
	{
		if (estado == false)
		{
			estado = true;
			return true;
		}
		else return false;
	}

	/////////// GETTERS ////////
	public Pacote getPacote() {
		return pacote;
	}

	public double getPreco() {
		return preco;
	}

	public int getCodigoPagamento() {
		return codigoPagamento;
	}

	
	public void salvar()
	{
		Session s = HibernateUtil.getSessionFactory().getCurrentSession();
		s.beginTransaction();
		s.save(this);
		s.getTransaction().commit();
	}




}

