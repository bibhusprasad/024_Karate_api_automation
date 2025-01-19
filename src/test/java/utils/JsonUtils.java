package utils;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.Map;
import java.util.stream.Collectors;

public class JsonUtils {

    public static String removeNullKeys(Map<String, Object> jsonObjectMap) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        Map<String, Object> jsonWithoutNUll = jsonObjectMap.entrySet()
                .stream()
                .filter(entry -> entry.getValue() != null && !entry.getValue().equals(""))
                .collect(Collectors.toMap(Map.Entry::getKey, entry -> entry.getValue().toString()));
        return mapper.writeValueAsString(jsonWithoutNUll);
    }

    public static String removeNullKeys(String jsonObjectString) throws JsonProcessingException {
        ObjectMapper mapper = new ObjectMapper();
        Map<String, Object> jsonWithoutNUll = mapper.readValue(jsonObjectString, new TypeReference<Map<String, Object>>() {}).entrySet()
                .stream()
                .filter(entry -> entry.getValue() != null && !entry.getValue().equals(""))
                .collect(Collectors.toMap(Map.Entry::getKey, entry -> entry.getValue().toString()));
        return mapper.writeValueAsString(jsonWithoutNUll);
    }
}
