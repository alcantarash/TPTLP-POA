package hotelcefet;

public aspect ListaEsperaReserva {
	pointcut fazendoReserva() : execution(void ReservaQuarto.fazReserva());
	after() throwing(SemQuartosException e) : fazendoReserva(){
		System.out.println("colocando pessoas na lista de espera");
	}
}
