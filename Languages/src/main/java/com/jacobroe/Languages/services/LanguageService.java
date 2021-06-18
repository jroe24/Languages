package com.jacobroe.Languages.services;

import java.util.List;
import java.util.Optional;
import org.springframework.stereotype.Service;
import com.jacobroe.Languages.models.Language;
import com.jacobroe.Languages.repositories.LanguageRepository;

@Service
public class LanguageService {
	// Add language to repository as a dependency 
	private final LanguageRepository languageRepository;
	
	public LanguageService(LanguageRepository languageRepository) {
		this.languageRepository = languageRepository;
	}
	// returns all languages
	 public List<Language> allLanguages() {
	        return languageRepository.findAll();
	    }
	    // creates a language
	 public Language createLanguage(Language l) {
	        return languageRepository.save(l);
	    }
	    // retrieves a language
	 public Language findLanguage(Long id) {
	     Optional<Language> optionalLanguage = languageRepository.findById(id);
	        if(optionalLanguage.isPresent()) {
	            return optionalLanguage.get();
	        } else {
	            return null;
	        }
	    }
	 // updates a language
	public Language updateLanguage(Long id, String name, String creator, String version) {
		Language l = findLanguage(id);
		l.setName(name);
		l.setCreator(creator);
		l.setVersion(version);
		return languageRepository.save(l);
	}
	
	// deletes a language
	public void deleteLanguage(Long id) {
		languageRepository.deleteById(id);
	}
}