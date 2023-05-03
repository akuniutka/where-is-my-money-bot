package dev.akuniutka.cbrratesbot.dto;

import lombok.Data;

import javax.xml.bind.annotation.*;
import java.util.ArrayList;
import java.util.List;

@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "GetCursOnDateXmlResult")
@Data
public class GetCursOnDateXmlResult {
    @XmlElementWrapper(name = "Valutedata", namespace = "")
    @XmlElement(name = "ValuteCursOnDate", namespace = "")
    private List<ValuteCursOnDate> valuteData = new ArrayList<>();
}
