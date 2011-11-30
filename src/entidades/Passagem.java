package entidades; 

public class Passagem 
{
	private int id;
	private String destino;
	private String origem;
	private int data;
	private double preco;
	
	// Construtor Basico //
	public Passagem(int id, String destino, String origem, int data, double preco)
	{
		this.id = id;
		this.destino = destino;
		this.origem = origem;
		this.data = data;
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

	public int getData() {
		return data;
	}

	public double getPreco() {
		return preco;
	}

	public static List<Passagem> porId(int id)
	{
	    Session s = HibernateUtil.getSessionFactory().getCurrentSession();
	    s.beginTransaction();
	    Query q = s.createQuery("from Passagem where id=:id");
	    List l = q.setParameter("id", id).list();
	    List<Passagem> ret = new ArrayList<Passagem>(l.size());
	    for (Object o : l) ret.add((Passagem) o);
	    s.getTransaction().commit();
	    return ret;
	}

	public static List<Passagem> porDestino(String destino)
	{
	    Session s = HibernateUtil.getSessionFactory().getCurrentSession();
	    s.beginTransaction();
	    Query q = s.createQuery("from Passagem where destino=:destino");
	    List l = q.setParameter("destino", destino).list();
	    List<Passagem> ret = new ArrayList<Passagem>(l.size());
	    for (Object o : l) ret.add((Passagem) o);
	    s.getTransaction().commit();
	    return ret;
	}

	public static List<Passagem> porOrigem(String origem)
	{
	    Session s = HibernateUtil.getSessionFactory().getCurrentSession();
	    s.beginTransaction();
	    Query q = s.createQuery("from Passagem where origem=:origem");
	    List l = q.setParameter("origem", origem).list();
	    List<Passagem> ret = new ArrayList<Passagem>(l.size());
	    for (Object o : l) ret.add((Passagem) o);
	    s.getTransaction().commit();
	    return ret;
	}

	public static List<Passagem> porData(int data)
	{
	    Session s = HibernateUtil.getSessionFactory().getCurrentSession();
	    s.beginTransaction();
	    Query q = s.createQuery("from Passagem where data=:data");
	    List l = q.setParameter("data", data).list();
	    List<Passagem> ret = new ArrayList<Passagem>(l.size());
	    for (Object o : l) ret.add((Passagem) o);
	    s.getTransaction().commit();
	    return ret;
	}

	public static List<Passagem> porPreco(double preco)
	{
	    Session s = HibernateUtil.getSessionFactory().getCurrentSession();
	    s.beginTransaction();
	    Query q = s.createQuery("from Passagem where preco=:preco");
	    List l = q.setParameter("preco", preco).list();
	    List<Passagem> ret = new ArrayList<Passagem>(l.size());
	    for (Object o : l) ret.add((Passagem) o);
	    s.getTransaction().commit();
	    return ret;
	}

	public void salvar()
	{
	    Session s = HibernateUtil.getSessionFactory().getCurrentSession();
	    s.beginTransaction();
	    s.save(this);
	    s.getTransaction().commit();
	}

	
}
