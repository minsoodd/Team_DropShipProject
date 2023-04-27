<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="chatbot-wrapper">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css" />
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui-touch-punch/0.2.3/jquery.ui.touch-punch.min.js"></script>
    <style>
    	.chatbot-toggle-button {
		  position: fixed;
	        right: 55px;
	        bottom: calc(50% - 20px); /* Adjust the position 30% from the bottom */
	        background-color: #1e88e5; /* Change the background color */
	        border: none;
	        color: white;
	        padding: 10px;
	        border-radius: 50%;
	        cursor: pointer;
	        z-index: 1001;
	        box-shadow: 0 3px 6px rgba(0, 0, 0, 0.16), 0 3px 6px rgba(0, 0, 0, 0.23); /* Add a shadow effect */
	        transition: all 0.3s ease; /* Add a smooth transition effect */
		}
		/* Add a hover effect to the chatbot toggle button */
	    .chatbot-toggle-button:hover {
	        background-color: #1565c0; /* Change the background color on hover */
	        transform: scale(1.1); /* Slightly increase the size on hover */
	    }
		/* Show the chatbot container when expanded */
		.chatbot-expanded {
		  display: flex;
		  background-color: #f9f9f9;
		}
    	/* Hide the chatbot container initially */
 		.chatbot-container { 
 		  display: none; 
		} 
        .chatbot-container {
            position: fixed;
            right: 20px;
            bottom: 20px;
            width: 300px;
            height: 400px;
            background-color: #f9f9f9; 
            border: 1px solid #ccc;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            z-index: 999;
        }
        .chatbot-header {
            padding: 10px;
            background-color: #f1f1f1;
            border-bottom: 1px solid #ccc;
            font-weight: bold;
        }
        .chatbot-messages {
            flex-grow: 1;
            overflow-y: auto;
            padding: 10px;
        }
        .user-message {
            text-align: right;
            background-color: #e0e0e0;
            padding: 5px;
            border-radius: 5px;
            margin-bottom: 5px;
        }
        .ai-message {
            text-align: left;
            background-color: #c0c0c0;
            padding: 5px;
            border-radius: 5px;
            margin-bottom: 5px;
        }
        .chatbot-input {
            display: flex;
            padding: 10px;
            border-top: 1px solid #ccc;
        }
        .chatbot-input input {
            flex-grow: 1;
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 5px;
        }
        .chatbot-input button {
            background-color: #4caf50;
            border: none;
            color: white;
            padding: 5px 10px;
            margin-left: 5px;
            border-radius: 5px;
            cursor: pointer;
        }
    </style>
    <script>
        $(document).ready(function() {
        	
        	$("#chatbot-container").hide();
        	
            // Attach sendMessage function to the Send button's click event
            $("#send-btn").on("click", sendMessage);

            // Handle Enter keypress event in the input field
            $("#user-input").on("keypress", function(event) {
                if (event.which === 13) { // 13 is the Enter key's keycode
                    event.preventDefault(); // Prevent the default form submission behavior
                    sendMessage();
                }
            });
            $("#chatbot-container").draggable().resizable({
                handles: 'n, e, s, w, ne, se, sw, nw'
            });
            
            // Toggle the chatbot visibility when the chatbot toggle button is clicked
            $("#chatbot-toggle").on("click", function () {
              $("#chatbot-container").toggle();
              $("#chatbot-container").toggleClass("chatbot-expanded");
            });
            
        });

        function sendMessage() {
            const userInput = $("#user-input");
            const message = userInput.val().trim();

            if (message !== "") {
                addMessageToChat(message, "user");
                userInput.val("");

                // Change the placeholder to show AI is entering
                userInput.attr("placeholder", "AI가 입력중입니다.....");

                // AJAX request to send user message and get AI response
                $.ajax({
                    url: "../ai/chat_index",
                    type: "POST",
                    contentType: "application/json", // Set the content type to application/json
                    dataType: "json", // Expect JSON data in the response
                    data: JSON.stringify({ // Convert data to JSON string
                        "prompt": message
                    }),
                    success: function(response) {
                        // Reset the placeholder
                        userInput.attr("placeholder", "여기에 메세지를 입력해주세요...");
                        addMessageToChat(response.response, "ai");
                    },
                    error: function(error) {
                        // Reset the placeholder
                        userInput.attr("placeholder", "서버와의 연동 실패했습니다.");
                        console.error("Error communicating with the server:", error);
                    }
                });
            }
        }

        function addMessageToChat(message, sender) {
            const chatMessages = $(".chatbot-messages");
            const messageElement = $("<div></div>")
                .addClass(sender === "user" ? "user-message" : "ai-message")
                .text(message);
            chatMessages.append(messageElement);
            chatMessages.scrollTop(chatMessages[0].scrollHeight);
        }
    </script>
    
    <button id="chatbot-toggle" class="chatbot-toggle-button">
	    <i class="fas fa-comment"></i> <!-- Add an icon (optional) -->
	</button>
    
    <div id="chatbot-container" class="chatbot-container">
        <div class="chatbot-header">AI 도슨트</div>
        <div class="chatbot-messages">
        	<div class="loading-message" style="display: none;">AI가 입력중입니다...</div>
        </div>
        <div class="chatbot-input">
            <input type="text" id="user-input" placeholder="여기에 메세지를 입력해주세요...">
            <button id="send-btn">Send</button>
        </div>
    </div>
   </div>