package hotelcefet;

public class Main {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ReservaQuarto r = new ReservaQuarto();
		for(int i=0; i<6; i++){
			try{
				r.fazReserva();
			}catch (SemQuartosException e){
				System.out.println("sem quartos vazios");
			}
		}

	}

}
