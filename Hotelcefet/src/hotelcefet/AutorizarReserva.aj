package hotelcefet;

public aspect AutorizarReserva {
	private Boolean foiAutorizado_ = true;
	pointcut realizandoTransacao();
		call(void ReservaQuarto.*(..));
	void around() : realizandoTransacao(){
		System.out.println("checando autorização");
		if (foiAutorizado_){
			proceed();
		}else{
		System.out.println("Acesso negado");
		}
	}
	private void proceed() {
		// TODO Auto-generated method stub
		
	}
}
