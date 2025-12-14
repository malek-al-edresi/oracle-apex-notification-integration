
/**
 * Class     : api_whatsapp_all_system
 * Author    : Eng. Malek Mohammed
 * Created   : 2025-06-01
 * Purpose   : Provides WhatsApp messaging functions based on user's timezone and UltraMsg API.
 */
class api_whatsapp_all_system {
    /*
     * Function : getCountryCallingCode
     * Purpose  : Determines the user's country code based on time zone.
     */
    static getCountryCallingCode() {
        try {
            const timeZone = Intl.DateTimeFormat().resolvedOptions().timeZone;

            const timeZoneToCallingCode = {
                "America/New_York": "+1",
                "America/Los_Angeles": "+1",
                "Europe/London": "+44",
                "Europe/Paris": "+33",
                "Asia/Riyadh": "+966",
                "Asia/Dubai": "+971",
                "Asia/Baghdad": "+964",
                "Asia/Tokyo": "+81",
                "Asia/Shanghai": "+86",
                "Africa/Cairo": "+20",
                "Africa/Johannesburg": "+27",
                "Asia/Aden": "+967",
            };

            return timeZoneToCallingCode[timeZone] || "+000";
        } catch (error) {
            console.error("Error detecting country code:", error);
            return "+000";
        }
    }

    /*
     * Function : sendMessage
     * Purpose  : Sends a WhatsApp message using UltraMsg API.
     */
    static sendMessage(phoneNumber, messageBody) {
        let countryCode = this.getCountryCallingCode();

        if (!phoneNumber.startsWith("+")) {
            phoneNumber = countryCode + phoneNumber;
        }

        const myHeaders = new Headers();
        myHeaders.append("Content-Type", "application/x-www-form-urlencoded");

        const urlencoded = new URLSearchParams();
        urlencoded.append("token", "fl5tqs9ho9hzvz44"); // Replace with secure method in production
        urlencoded.append("to", phoneNumber);
        urlencoded.append("body", messageBody);

        const requestOptions = {
            method: 'POST',
            headers: myHeaders,
            body: urlencoded,
            redirect: 'follow'
        };

        fetch("https://api.ultramsg.com/instance155972/messages/chat", requestOptions)
            .then(response => response.text())
            .then(result => console.log("Message Sent:", result))
            .catch(error => console.error('Error:', error));
    }
}


// Main
$( document ).ready(function() {
try {
    // Get values from APEX page items
    const phoneNumber = apex.item("PHONE_NUMBER").getValue();
    const bodyMessage = apex.item("BODY_MESSAGE").getValue();

    // Validate inputs before sending
    if (phoneNumber && bodyMessage) {
        
        // Send the message using the WhatsApp API
        api_whatsapp_all_system.sendMessage(phoneNumber, bodyMessage);

        // Debug: Log the phone number and message content
        console.log("Sending to:", phoneNumber);
        console.log("Message:", bodyMessage);
    } else {
        console.warn("Phone number or message is missing.");
    }
} catch (error) {
    console.warn("An error occurred while sending the message.");
}    
});




