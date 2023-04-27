package de.bsi.openai.dalle;

import java.util.List;
import java.util.Optional;

import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor	// 얘 있어야
@Data	// 게터로 data확인해보려고 만듦
public class GenerationResponse {
	
	private List<ImageUrl> data;
	
	public GenerationResponse(List<ImageUrl> data) {
		this.data = data;
	}
	
	public Optional<String> firstImageUrl() {
		if (data == null || data.isEmpty())
			return Optional.empty();
		return Optional.of(data.get(0).url);
	}
	
	@NoArgsConstructor	// 얘 있어야
	@Data	// 게터로 data확인해보려고 만듦
	public static class ImageUrl {
		private String url;
//		private final String url;	// @NoArgsConstructor 이거 붙였더니 The blank final field url may not have been initialized 이거 떠서 private 없앰
		
		public ImageUrl(String url) {
			this.url = url;
		}
	}

}




//package de.bsi.openai.dalle;
//
//import java.util.List;
//import java.util.Optional;
//
//public record GenerationResponse(List<ImageUrl> data) {
//	
//	public Optional<String> firstImageUrl() {
//		if (data == null || data.isEmpty())
//			return Optional.empty();
//		return Optional.of(data.get(0).url);
//	}
//	
//	record ImageUrl(String url) {}
//	
//}
