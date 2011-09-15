package timesheetos

import org.joda.time.LocalDate
import org.joda.time.contrib.hibernate.PersistentLocalDate
import org.joda.time.LocalTime
import org.joda.time.contrib.hibernate.PersistentLocalTimeAsTime
import org.joda.time.Period

class Dia {

    LocalDate data

    LocalTime entrada = new LocalTime(9, 0)

    LocalTime inicioAlmoco = new LocalTime(12, 0)

    LocalTime fimAlmoco = new LocalTime(13, 0)

    LocalTime saida = new LocalTime(18, 0)

    String observacoes

    static mapping = {

        data type: PersistentLocalDate
        entrada type: PersistentLocalTimeAsTime
        inicioAlmoco type: PersistentLocalTimeAsTime
        fimAlmoco type: PersistentLocalTimeAsTime
        saida type: PersistentLocalTimeAsTime

    }

    static constraints = {
        data(unique: true)
        entrada (blank: true)
        inicioAlmoco (blank: true)
        fimAlmoco (blank: true)
        saida (blank: true)
        observacoes (blank: true)
    }

    BigDecimal horasTrabalhadas() {
        Period tempoTrabalho = new Period(entrada, saida)
        Period tempoAlmoco = new Period(inicioAlmoco, fimAlmoco)

        tempoTrabalho.hours - tempoAlmoco.hours

    }

}
