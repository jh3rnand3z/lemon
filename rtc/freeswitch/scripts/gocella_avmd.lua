local human_detected = false;
local voicemail_detected = false;
 
function onInput(session, type, obj)
 
    if type == "dtmf" and obj['digit'] == '0' and human_detected == false then
        human_detected = true;
        session:execute("avmd","stop");
        session:execute("transfer","2005");
        return "break";
    end

    if type == "dtmf" and obj['digit'] == '1' and human_detected == false then
        human_detected = true;
        session:execute("avmd","stop");
        session:execute("transfer","2005");
        return "break";
    end

    if type == "dtmf" and obj['digit'] == '9' and human_detected == false then
        human_detected = true;
        session:execute("avmd","stop");
        return "break";
    end
 
    if type == "event" and voicemail_detected == false then
        voicemail_detected = true;
        session:execute("avmd","stop");
        session:streamFile("/usr/local/freeswitch/sounds/gocella/voicemail.wav");
        return "break";
    end
end

-- answer the call
session:answer();
session:setAutoHangup(false)
session:setInputCallback("onInput");
session:execute("avmd","start");

-- sleep a second
session:sleep(1000);

-- play a file
session:streamFile("/usr/local/freeswitch/sounds/gocella/studentloan.wav");

session:execute("avmd","stop");

session:transfer("2005", "XML", "default");

