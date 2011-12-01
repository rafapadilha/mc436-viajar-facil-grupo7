package entidades;

import java.util.List;

import java.util.List;
import java.util.Set;
import java.util.HashSet;
import java.util.ArrayList;

import org.hibernate.Session;
import org.hibernate.Query;

import orm.util.HibernateUtil;

public class Compra
{
	private int id;
	private Pacote pacote;
	private GuiaTuristico guia;
	private Pagamento pagamento;
	private Passagem passagem;
	private ReservaHotel hotel;

    public Compra()
    {
    }

	// Construtor basico //
	public Compra(int id, Pacote pacote, GuiaTuristico guia, Pagamento pagamento, Passagem passagem, ReservaHotel hotel)
	{
		this.id = id;
		this.pacote = pacote;
		this.guia = guia;
		this.pagamento = pagamento;
		this.passagem = passagem;
		this.hotel = hotel;
	}

	////////////////// GETTERS ///////////////////////////
	public int getId() {
		return id;
	}

	public Pacote getPacote() {
		return pacote;
	}

	public GuiaTuristico getGuia() {
		return guia;
	}

	public Pagamento getPagamento() {
		return pagamento;
	}

	public Passagem getPassagem() {
		return passagem;
	}

	public ReservaHotel getHotel() {
		return hotel;
	}


	public static List<Compra> porId(int id)
	{
		Session s = HibernateUtil.getSessionFactory().getCurrentSession();
		s.beginTransaction();
		Query q = s.createQuery("from Compra where id=:id");
		List l = q.setParameter("id", id).list();
		List<Compra> ret = new ArrayList<Compra>(l.size());
		for (Object o : l) ret.add((Compra) o);
		s.getTransaction().commit();
		return ret;
	}

	public static int maiorId()
	{
		Session s = HibernateUtil.getSessionFactory().getCurrentSession();
		s.beginTransaction();
		Query q = s.createQuery("select max(id) from Compra");
		return (Integer) q.list().get(0);
	}


	public void salvar()
	{
		Session s = HibernateUtil.getSessionFactory().getCurrentSession();
		s.beginTransaction();
		s.save(this);
		s.getTransaction().commit();
	}



}
