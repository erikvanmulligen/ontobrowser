/* 

Copyright 2015 Novartis Institutes for Biomedical Research

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

*/
package com.novartis.pcs.ontology.dao;
import java.util.Collection;
import java.util.EnumSet;

import javax.ejb.Local;

import com.novartis.pcs.ontology.entity.Ontology;
import com.novartis.pcs.ontology.entity.Term;
import com.novartis.pcs.ontology.entity.TermDAOLocal;
import com.novartis.pcs.ontology.entity.VersionedEntity.Status;


@Local
public interface TermDAOLocal extends VersionedDAO<Term> {
	
	public Collection<Term> loadRoots();
	
	public Collection<Term> loadAll(Ontology ontology);
	
	public Collection<Term> loadSubTermsByReferenceId(String referenceId, EnumSet<Status> status);
	
	public Term loadByReferenceId(String referenceId);
	
	public Term loadByReferenceId(java.lang.String referenceId, boolean loadLazyAssociations);
	
	public Term loadByName(String name, Ontology ontology);
	
	public Term loadByName(String name, Ontology ontology, boolean loadLazyAssociations);
}
