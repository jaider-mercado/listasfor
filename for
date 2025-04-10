import java.util.ArrayList;
import java.util.Scanner;

public class MenuDeNombres {
    public static void main(String[] args) {
        
        Scanner scanner = new Scanner(System.in);

       
        ArrayList<String> nombres = new ArrayList<>();

        
        String[] menu = {
            "Agregar Nombre",
            "Eliminar Nombre",
            "Actualizar Nombre",
            "Mostrar Nombres",
            "Salir"
        };

        boolean seguir = true;

        
        while (seguir) {
            System.out.println("\n--- Menú Principal ---");

            
            for (int i = 0; i < menu.length; i++) {
                System.out.println((i + 1) + ". " + menu[i]);
            }

            
            System.out.print("Elige una opción (1-5): ");
            int opcion = scanner.nextInt();
            scanner.nextLine(); 

            switch (opcion) {
                case 1: 
                    System.out.print("Escribe el nombre que quieres agregar: ");
                    String nuevoNombre = scanner.nextLine();
                    nombres.add(nuevoNombre);
                    System.out.println(" Nombre agregado.");
                    break;

                case 2:
                    System.out.print("Escribe el nombre que quieres eliminar: ");
                    String nombreEliminar = scanner.nextLine();
                    boolean encontradoEliminar = false;

                    for (int i = 0; i < nombres.size(); i++) {
                        if (nombres.get(i).equalsIgnoreCase(nombreEliminar)) {
                            nombres.remove(i);
                            encontradoEliminar = true;
                            System.out.println("️ Nombre eliminado.");
                            break;
                        }
                    }

                    if (!encontradoEliminar) {
                        System.out.println("️ No se encontró ese nombre.");
                    }
                    break;

                case 3: 
                    System.out.print("Escribe el nombre que quieres actualizar: ");
                    String nombreViejo = scanner.nextLine();
                    boolean encontradoActualizar = false;

                    for (int i = 0; i < nombres.size(); i++) {
                        if (nombres.get(i).equalsIgnoreCase(nombreViejo)) {
                            System.out.print("Escribe el nuevo nombre: ");
                            String nombreNuevo = scanner.nextLine();
                            nombres.set(i, nombreNuevo);
                            encontradoActualizar = true;
                            System.out.println(" Nombre actualizado.");
                            break;
                        }
                    }

                    if (!encontradoActualizar) {
                        System.out.println("️ No se encontró ese nombre.");
                    }
                    break;

                case 4: 
                    System.out.println("\n Lista de Nombres:");
                    if (nombres.isEmpty()) {
                        System.out.println("La lista está vacía.");
                    } else {
                        for (String nombre : nombres) {
                            System.out.println("- " + nombre);
                        }
                    }
                    break;

                case 5:
                    seguir = false;
                    System.out.println(" ¡Gracias por usar el programa! Hasta luego.");
                    break;

                default:
                    System.out.println(" Opción no válida. Intenta con un número del 1 al 5.");
            }
        }

        scanner.close();
    }
}
