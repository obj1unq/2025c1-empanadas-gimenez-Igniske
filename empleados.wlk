//Escribir aqui los objetos
// Identificar nombres de metodos segun si modifican o consultan. Es importante denotar cuando es una accion o una consulta.
object gimenez{
    var fondo = 300000

    method fondo(){
        return fondo;
    }

    method fondo_(monto){
        fondo = monto;
    }

    method pagarSueldo(persona){
        self.fondo_(self.fondo() - persona.sueldo())
        persona.cobrar()
        persona.totalCobrado()
    }
}

object baigorria{
    const valorEmpanada = 15;
    var ventas = 0;
    var sueldo = 0;
    var totalCobrado = 0;

    method valorEmpanada(){
        return valorEmpanada;
    }

    method ventas(){
        return ventas;
    }
    
    method ventas_(cantidad) {
        ventas = cantidad;
    }

    method sueldo(){
        return sueldo;
    }

    method sueldo_(monto){
        sueldo = monto;
    }

    method vender(cantidad){
        self.ventas_(cantidad)
        self.sueldo_(self.sueldo() + (valorEmpanada * cantidad))
    }

    method totalCobrado(){
        return totalCobrado;
    }

    method totalCobrado_(monto){
        totalCobrado = monto;
    }

    method cobrar(){
        self.totalCobrado_(totalCobrado + sueldo)
        self.ventas_(0)
        self.sueldo_(0)
    }

}


object galvan{
    var sueldo = 15000;
    var deuda = 0
    var dinero = 0


    method sueldo(){
        return sueldo;
    }

    method sueldo(monto){
        sueldo = monto;
    }

    method deuda(){
        return deuda;
    }

    method deuda_(monto){
        deuda = monto;
    }

    method dinero(){
        return dinero;
    }

    method dinero_(monto){
        dinero = monto;
    }

    method cobrar(){
        
    }

    method gastar(cuanto){
        if(dinero > cuanto){
            self.dinero_(dinero - cuanto)
        } else{
            self.deuda_(deuda + (cuanto - dinero))
            self.dinero_(0)
        }
    }

    method totalCobrado(){
        if(deuda > 0){
            deuda = deuda - sueldo;
            if(deuda < 0){
                dinero = dinero - deuda;
                deuda = 0;
            }
        } else{
            dinero = dinero + sueldo;
        }
    }
}