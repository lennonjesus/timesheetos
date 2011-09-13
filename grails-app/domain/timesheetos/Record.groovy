package timesheetos

import org.joda.time.LocalDate
import org.joda.time.LocalTime
import org.joda.time.contrib.hibernate.PersistentLocalDate
import org.joda.time.contrib.hibernate.PersistentLocalTimeAsTime

class Record {

    LocalDate date

    LocalTime time

    RecordType type


    static mapping = {
        date type: PersistentLocalDate
        time type: PersistentLocalTimeAsTime
    }

    static constraints = {
    }
}
