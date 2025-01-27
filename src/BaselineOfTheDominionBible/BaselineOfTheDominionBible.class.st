Class {
	#name : #BaselineOfTheDominionBible,
	#superclass : #BaselineOf,
	#category : #BaselineOfTheDominionBible
}

{ #category : #lepiter }
BaselineOfTheDominionBible class >> loadLepiter [
	IceRepository registry
		detect: [ :aRepository | aRepository name = 'dominion' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties
				addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [ self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfTheDominionBible >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'TheDominionBible'
		]
]
