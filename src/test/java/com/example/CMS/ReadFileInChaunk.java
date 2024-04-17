package com;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutionException;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class ReadFileInChaunk {

	public static void main(String[] args) throws InterruptedException, ExecutionException, IOException {

		Resource resource = new ClassPathResource("classpath:normalText.txt");
		  Path path = Paths.get("/Users/arvinmishra/Documents/workspace-spring-tool-suite-4-4.13.0.RELEASE/MessageServicces/src/main/webapp/resources/normalText.txt");
	        long chunkSize = 1024 * 1024; // 1 MB chunk size (adjust as needed)

	        CompletableFuture<Map<String, Integer>>[] completableFutures = Files.lines(path)
	                .collect(Collectors.groupingByConcurrent(line -> line.length() / chunkSize))
	                .entrySet().stream()
	                .map(entry -> CompletableFuture.supplyAsync(() -> countWords(entry.getValue().stream())))
	                .toArray(CompletableFuture[]::new);


	        CompletableFuture<Void> allOf = CompletableFuture.allOf(completableFutures);
	        allOf.get(); // Wait for all CompletableFuture to complete

	        ConcurrentHashMap<String, Integer> combinedMap = new ConcurrentHashMap<>();
	        for (CompletableFuture<Map<String, Integer>> future : completableFutures) {
	            future.thenAccept(chunkMap -> chunkMap.forEach((word, count) -> combinedMap.merge(word, count, Integer::sum)))
	                  .join(); // Wait for the CompletableFuture to complete and merge its results
	        }

	        System.out.println(combinedMap);
	    }

	    private static Map<String, Integer> countWords(Stream<String> lines) {
	        ConcurrentHashMap<String, Integer> wordCountMap = new ConcurrentHashMap<>();
	        lines.forEach(line -> Arrays.stream(line.split("\\s+"))
	                .forEach(word -> wordCountMap.merge(word, 1, Integer::sum)));
	        return wordCountMap;
	    }
		 
		 
		

	
	
}

