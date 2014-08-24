package hotelcefet;

public class ReservaQuarto {
	private Integer numeroDeQuartos =5;
	
public void fazReserva() throws SemQuartosException{
	if(numeroDeQuartos <=0){
		throw new SemQuartosException();
	}
	numeroDeQuartos--;
	System.out.println("Quarto reservado");
}
}
