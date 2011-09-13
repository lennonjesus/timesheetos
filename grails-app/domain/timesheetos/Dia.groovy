package timesheetos

import org.joda.time.LocalDate
import org.joda.time.contrib.hibernate.PersistentLocalDate
import org.joda.time.LocalTime
import org.joda.time.contrib.hibernate.PersistentLocalTimeAsTime
import org.joda.time.Period

class Dia {

    LocalDate data

    LocalTime entrada

    LocalTime saida

    LocalTime inicioAlmoco

    LocalTime fimAlmoco

    String observacoes

    static mapping = {

        data type: PersistentLocalDate
        entrada type: PersistentLocalTimeAsTime
        saida type: PersistentLocalTimeAsTime
        inicioAlmoco type: PersistentLocalTimeAsTime
        fimAlmoco type: PersistentLocalTimeAsTime

    }

    static constraints = {
    }

    Integer horasTrabalhadas() {
        Period tempoTrabalho = new Period(entrada, saida)
        Period tempoAlmoco = new Period(inicioAlmoco, fimAlmoco)

        return tempoTrabalho.hours - tempoAlmoco.hours

    }

}
