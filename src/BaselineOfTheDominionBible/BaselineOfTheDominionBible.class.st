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
