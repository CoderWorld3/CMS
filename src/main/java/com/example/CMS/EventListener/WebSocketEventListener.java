//package com.example.CMS.EventListener;
//
//import org.hibernate.annotations.common.util.impl.LoggerFactory;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.event.EventListener;
//import org.springframework.messaging.simp.SimpMessageSendingOperations;
//import org.springframework.messaging.simp.stomp.StompHeaderAccessor;
//import org.springframework.stereotype.Component;
//import org.springframework.web.socket.messaging.SessionConnectedEvent;
//import org.springframework.web.socket.messaging.SessionDisconnectEvent;
//
//import com.example.CMS.Model.ChatMessage;
//
//@Component
//public class WebSocketEventListener {
//
//    private static final org.jboss.logging.Logger logger = LoggerFactory.logger(WebSocketEventListener.class);
//
//    @Autowired
//    private SimpMessageSendingOperations messagingTemplate;
//
//    @EventListener
//    public void handleWebSocketConnectListener(SessionConnectedEvent event) {
//        logger.info("Received a new web socket connection");
//    }
//
//    @EventListener
//    public void handleWebSocketDisconnectListener(SessionDisconnectEvent event) {
//        StompHeaderAccessor headerAccessor = StompHeaderAccessor.wrap(event.getMessage());
//
//        String username = (String) headerAccessor.getSessionAttributes().get("username");
//        if(username != null) {
//            logger.info("User Disconnected : " + username);
//
//            ChatMessage chatMessagePojo = new ChatMessage();
////            chatMessagePojo.getRecipientName(ChatMessage.MessageType.LEAVE);
//            chatMessagePojo.setSenderName(username);
//
//            messagingTemplate.convertAndSend("/topic/public", chatMessagePojo);
//        }
//    }
//}