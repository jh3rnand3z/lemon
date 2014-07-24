local human_detected = false;
local voicemail_detected = false;
 
function onInput(session, type, obj)
    if type == "dtmf" and obj['digit'] == '1' and human_detected == false then
        human_detected = true;
        return "break";
    end
 
    if type == "event" and voicemail_detected == false then
        voicemail_detected = true;
        return "break";
    end
end

-- answer the call
session:answer();

session:setInputCallback("onInput");
session:execute("avmd","start");


-- sleep a second
session:sleep(1000);

-- play a file
session:streamFile("gocella/studentloan.wav");

session:execute("avmd","stop");


-- hangup
session:hangup();
