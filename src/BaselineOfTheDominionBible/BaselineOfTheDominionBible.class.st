Class {
	#name : #BaselineOfTheDominionBible,
	#superclass : #BaselineOf,
	#category : #BaselineOfTheDominionBible
}

{ #category : #baseline }
BaselineOfTheDominionBible >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'TheDominionBible'
		]
]

{ #category : #'as yet unclassified' }
BaselineOfTheDominionBible >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'The-Dominion-Bible' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]
