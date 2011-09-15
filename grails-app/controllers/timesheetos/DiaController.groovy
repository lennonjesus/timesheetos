package timesheetos

class DiaController {

    static scaffold = true

    def list = {

        def diaInstanceList = Dia.listOrderByData(params)

        def horasPrevistas = diaInstanceList.size() * 8

        def horasRealizadas = 0

        diaInstanceList.each {
            horasRealizadas += it.horasTrabalhadas()
        }

        def saldoHoras = horasRealizadas - horasPrevistas

        [ diaInstanceList : diaInstanceList, horasPrevistas : horasPrevistas, horasRealizadas : horasRealizadas, saldoHoras : saldoHoras ]

    }
}
