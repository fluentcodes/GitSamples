package fluentcodes.sandbox;

import org.fluentcodes.tools.io.IOJackson;
import org.junit.Test;

import java.util.Map;

import static junit.framework.TestCase.assertEquals;

public class SimpleTest {
    @Test
    public void testNotifyActionType() {
        Map testMap = new IOJackson<Map>("src/test/resources/test.json", Map.class).read();
        assertEquals("value", testMap.get("key"));
    }
}
